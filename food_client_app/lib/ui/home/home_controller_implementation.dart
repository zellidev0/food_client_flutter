import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:food_client/commons/error.dart';
import 'package:food_client/commons/view_state.dart';
import 'package:food_client/generated/locale_keys.g.dart';
import 'package:food_client/services/logging_service/logging_service.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/services/navigation_service/typed_routes.dart';
import 'package:food_client/ui/home/home_controller.dart';
import 'package:food_client/ui/home/home_model.dart';
import 'package:food_client/ui/home/services/home_navigation_service.dart';
import 'package:food_client/ui/home/services/home_persistence_service.dart';
import 'package:food_client/ui/home/services/home_web_client_service.dart';
import 'package:food_client/ui/home/services/home_web_image_sizer_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

const int widthPixels = 600;
const int recipesPerPage = 16;

class HomeControllerImplementation extends Cubit<HomeModel>
    implements HomeController {
  final HomeNavigationService globalNavigationService;
  final HomePersistenceService persistenceService;
  final HomeWebImageSizerService webImageSizerService;
  final HomeWebClientService webClientService;
  final LoggingService logger;
  final List<Locale> recipeLocales;
  HomeControllerImplementation({
    required this.globalNavigationService,
    required this.persistenceService,
    required this.webImageSizerService,
    required this.webClientService,
    required this.logger,
    required this.recipeLocales,
  }) : super(
          HomeModel(
            filters: const ViewState<List<HomeModelFilter>>.loading(),
            recipes: const ViewState<List<HomeModelRecipe>>.loading(),
            pagingController: PagingController<int, HomeModelRecipe>(
              firstPageKey: 0,
            ),
          ),
        ) {
    scheduleMicrotask(
      () => unawaited(
        Task.sequenceList(<Task<void>>[
          _fetchFiltersAndSetState(),
          _listenToPaginationController(
            paginationController: state.pagingController,
          ),
        ]).run(),
      ),
    );
  }

  Task<void> _listenToPaginationController({
    required PagingController<int, HomeModelRecipe> paginationController,
  }) {
    Task<void> fetchRecipesTask(List<HomeModelFilter> filters, int pageKey) =>
        _fetchRecipes(
          paginationSkip: 0,
          tagIds: selectedFilterIds(
            type: filters.whereType<HomeModelFilterTag>().toList(),
          ),
          cuisineIds: selectedFilterIds(
            type: filters.whereType<HomeModelFilterCuisine>().toList(),
          ),
        ).match(
          (final Exception error) {
            logger.error(
              MyError(
                message: 'Error fetching more recipes for filter',
                originalError: error,
              ),
            );
            globalNavigationService.showSnackBar(
              message:
                  LocaleKeys.ui_home_view_error_states_fetching_recipes.tr(),
            );
          },
          (final List<HomeModelRecipe> recipes) {
            _setRecipesInPageController(
              pageKey: pageKey,
              newRecipes: recipes,
              replaceRecipes: false,
            );
          },
        );

    return Task<void>(
      () async => paginationController.addPageRequestListener(
        (final int pageKey) {
          state.filters.maybeMap(
            data: (ViewStateData<List<HomeModelFilter>> data) =>
                unawaited(fetchRecipesTask(data.data, pageKey).run()),
            orElse: () {
              logger.error(MyError(message: 'Error fetching with filters'));
              return null;
            },
          );
        },
      ),
    ).andThen(() => fetchRecipesTask(<HomeModelFilter>[], 0));
  }

  @override
  void setFiltersSelected({
    required final String filterId,
    required final bool isSelected,
  }) =>
      state.filters.maybeMap(
        data: (ViewStateData<List<HomeModelFilter>> data) => unawaited(
          _fetchRecipes(
            paginationSkip: 0,
            tagIds: selectedFilterIds(
              type: data.data.whereType<HomeModelFilterTag>().toList(),
            ),
            cuisineIds: selectedFilterIds(
              type: data.data.whereType<HomeModelFilterCuisine>().toList(),
            ),
          ).match(
            (final Exception error) {
              logger.error(
                MyError(
                  message: 'Error fetching recipes for filter',
                  originalError: error,
                ),
              );

              globalNavigationService.showSnackBar(
                message: LocaleKeys
                    .ui_home_view_error_states_fetching_recipes_for_filter
                    .tr(),
              );
            },
            (final List<HomeModelRecipe> recipes) {
              emit(
                state.copyWith(
                  filters: state.filters.mapData(
                    (List<HomeModelFilter> filters) => replaceWIthId(
                      data: filters,
                      filterId: filterId,
                      isSelected: isSelected,
                    ).toList(),
                  ),
                ),
              );
              _setRecipesInPageController(
                pageKey: 0,
                newRecipes: recipes,
                replaceRecipes: true,
              );
            },
          ).run(),
        ),
        orElse: () {
          logger.error(MyError(message: 'Error setting filters'));

          globalNavigationService.showSnackBar(
            message: LocaleKeys
                .ui_home_view_error_states_fetching_recipes_for_filter
                .tr(),
          );
          return null;
        },
      );

  @override
  void goToSingleRecipeView({
    required final String recipeId,
    required final String recipeTitle,
    required final Uri imagePath,
  }) =>
      unawaited(
        persistenceService
            .addRecipeOpeningToHistory(
              recipeId: recipeId,
              recipeTitle: recipeTitle,
              imagePath: some(imagePath),
              createdAt: DateTime.now(),
            )
            .match(
              logger.error,
              (_) => null,
            )
            .andThen(
              () => Task<void>.of(
                globalNavigationService.goTo(
                  SingleRecipePageRoute(recipeId: recipeId).location,
                ),
              ),
            )
            .run(),
      );

  @override
  void goToHistoryView() => globalNavigationService.navigateToNamed(
        uri: NavigationServiceUris.historyRouteUri,
      );

  List<HomeModelFilter> replaceWIthId({
    required List<HomeModelFilter> data,
    required String filterId,
    required bool isSelected,
  }) =>
      data
          .map(
            (final HomeModelFilter filter) => filter.id == filterId
                ? filter.copyWith(isSelected: isSelected)
                : filter,
          )
          .toList();
  @override
  Future<void> openDialog({
    required final Widget child,
  }) async =>
      await globalNavigationService.showModalBottomSheet(child: child);

  @override
  Future<void> retryLastRecipeFetching() async {
    state.pagingController.retryLastFailedRequest();
  }

  void _setRecipesInPageController({
    required final int pageKey,
    required final List<HomeModelRecipe> newRecipes,
    required final bool replaceRecipes,
  }) {
    final bool isLastPage = newRecipes.length < recipesPerPage;
    if (replaceRecipes) {
      state.pagingController.value = PagingState<int, HomeModelRecipe>(
        itemList: newRecipes,
        error: null,
        nextPageKey: 0,
      );
      state.pagingController.refresh();
    } else {
      if (isLastPage) {
        state.pagingController.appendLastPage(newRecipes);
      } else {
        final int nextPageKey = pageKey + newRecipes.length;
        state.pagingController.appendPage(newRecipes, nextPageKey);
      }
    }
  }

  TaskEither<Exception, List<HomeModelRecipe>> _fetchRecipes({
    required final int paginationSkip,
    required final List<String> tagIds,
    required final List<String> cuisineIds,
  }) =>
      webClientService
          .fetchRecipes(
            recipeLocales: recipeLocales,
            skip: paginationSkip,
            take: recipesPerPage,
            tagIds: some(tagIds),
            cuisineId: cuisineIds.firstOption,
          )
          .map(
            (final HomeWebClientModelRecipeResponse recipeResponse) =>
                mapToHomeModelRecipes(
              recipes: recipeResponse.recipes,
              imageResizerService: webImageSizerService,
            ),
          );

  Task<void> _fetchFiltersAndSetState() => webClientService
          .fetchTags(
            take: some(100),
            recipeLocales: recipeLocales,
          )
          .map2(
            webClientService.fetchCuisines(
              take: some(1000),
              recipeLocales: recipeLocales,
            ),
            (
              List<HomeWebClientModelTag> tags,
              List<HomeWebClientModelCuisine> cuisines,
            ) =>
                state.copyWith(
              filters: <HomeModelFilter>[
                ...tags.map(_mapToTag),
                ...cuisines.map(_mapToCuisine),
              ].toViewStateData(),
            ),
          )
          .match(
        (final Exception error) {
          logger.error(
            MyError(
              message: 'Failed to fetch filters',
              originalError: error,
            ),
          );

          globalNavigationService.showSnackBar(
            message: LocaleKeys.ui_home_view_error_states_fetching_filters.tr(),
          );
          emit(state.copyWith(filters: error.toViewStateError()));
        },
        (final HomeModel newState) {
          logger.info(
            message: 'Fetched filters: ${newState.filters}',
          );
          emit(newState);
        },
      );

  Option<Uri> _getImageUrlFromImagePath({
    required final HomeWebImageSizerService imageResizerService,
    required final Uri imagePath,
  }) =>
      imageResizerService
          .getUrl(filePath: imagePath, widthPixels: widthPixels)
          .fold(
        (final Exception error) {
          logger.error(
            MyError(
              message: 'Failed to get image url from image path',
              originalError: error,
            ),
          );

          return none<Uri>();
        },
        some<Uri>,
      );

  List<HomeModelRecipe> mapToHomeModelRecipes({
    required final List<HomeWebClientModelRecipe> recipes,
    required final HomeWebImageSizerService imageResizerService,
  }) =>
      recipes
          .map(
            (final HomeWebClientModelRecipe recipe) => recipe.imagePath
                .flatMap(
                  (final Uri imagePath) => _getImageUrlFromImagePath(
                    imageResizerService: imageResizerService,
                    imagePath: imagePath,
                  ),
                )
                .map(
                  (final Uri imageUri) => _mapHomeModelRecipe(recipe, imageUri),
                ),
          )
          .whereType<Some<HomeModelRecipe>>()
          .map((final Some<HomeModelRecipe> recipe) => recipe.value)
          .toList();
}

List<String> selectedFilterIds({
  required final List<HomeModelFilter> type,
}) =>
    selectedFilters(filters: type)
        .map((final HomeModelFilter filter) => filter.id)
        .toList();

List<HomeModelFilter> selectedFilters({
  required final List<HomeModelFilter> filters,
}) =>
    filters
        .filter((final HomeModelFilter filter) => filter.isSelected)
        .toList();

HomeModelRecipe _mapHomeModelRecipe(
  HomeWebClientModelRecipe recipe,
  Uri imageUri,
) =>
    HomeModelRecipe(
      id: recipe.id,
      displayedAttributes: _mapDisplayedAttributes(
        recipe.displayedAttributes,
      ),
      difficulty: recipe.difficulty,
      ingredients: _mapIngredients(recipe.ingredients),
      yields: _mapYields(recipe.yields),
      tagIds: recipe.tagIds,
      imageUri: imageUri,
      cuisineIds: recipe.cuisineIds,
    );

HomeModelDisplayedAttributes _mapDisplayedAttributes(
  final HomeWebClientModelDisplayedAttributes displayedAttributes,
) =>
    HomeModelDisplayedAttributes(
      name: displayedAttributes.name,
      headline: displayedAttributes.headline,
      description: displayedAttributes.description,
      descriptionMarkdown: displayedAttributes.descriptionMarkdown,
    );

List<HomeModelIngredient> _mapIngredients(
  final List<HomeWebClientModelIngredient> ingredients,
) =>
    ingredients
        .map(
          (final HomeWebClientModelIngredient ingredient) =>
              HomeModelIngredient(
            id: ingredient.id,
            slug: ingredient.slug,
            displayedName: ingredient.displayedName,
          ),
        )
        .toList();

HomeModelFilterTag _mapToTag(HomeWebClientModelTag tag) => HomeModelFilterTag(
      id: tag.id,
      displayedName: tag.displayedName,
      type: tag.type,
      isSelected: false,
      numberOfRecipes: tag.numberOfRecipes,
    );

HomeModelFilterCuisine _mapToCuisine(HomeWebClientModelCuisine cuisine) =>
    HomeModelFilterCuisine(
      id: cuisine.id,
      displayedName: cuisine.displayedName,
      slug: cuisine.slug,
      isSelected: false,
      numberOfRecipes: cuisine.numberOfRecipes,
      countryCode: cuisine.countryCode,
    );

List<HomeModelYield> _mapYields(
  final List<HomeWebClientModelYield> yields,
) =>
    yields
        .map(
          (final HomeWebClientModelYield yield) => HomeModelYield(
            yield: yield.yield,
            yieldIngredient:
                yield.yieldIngredient.map(_mapToYieldIngredient).toList(),
          ),
        )
        .toList();

HomeModelYieldIngredient _mapToYieldIngredient(
  final HomeWebClientModelYieldIngredient ingredient,
) =>
    HomeModelYieldIngredient(
      id: ingredient.id,
      amount: ingredient.amount,
      unit: ingredient.unit,
    );
