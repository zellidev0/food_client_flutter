import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/ui/home/home_model.dart';
import 'package:food_client/ui/home/home_navigation_service.dart';
import 'package:food_client/ui/home/home_view.dart';
import 'package:food_client/ui/home/home_web_client_service.dart';
import 'package:food_client/ui/home/home_web_image_sizer_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

const int widthPixels = 600;
const int recipesPerPage = 16;

class HomeControllerImplementation extends HomeController {
  final HomeWebClientService _webClientService;
  final HomeWebImageSizerService _webImageSizerService;
  final HomeNavigationService _globalNavigationService;

  HomeControllerImplementation(
    super.state, {
    required final HomeWebClientService webClientService,
    required final HomeWebImageSizerService webImageSizerService,
    required final HomeNavigationService globalNavigationService,
  })  : _webClientService = webClientService,
        _webImageSizerService = webImageSizerService,
        _globalNavigationService = globalNavigationService {
    _listenToPaginationController();
    unawaited(_init());
  }

  void _listenToPaginationController() {
    state.pagingController.addPageRequestListener((final int pageKey) async {
      (await _fetchRecipes(paginationSkip: pageKey).run()).fold(
        (final Exception exception) {
          debugPrint(exception.toString());
          return state.pagingController.error =
              'ui.home_view.error_states.no_recipes'.tr();
        },
        (final List<HomeModelRecipe> recipes) {
          setRecipesInPageController(
            newRecipes: recipes,
            pageKey: pageKey,
            replaceRecipes: false,
          );
        },
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    state.pagingController.dispose();
  }

  Future<void> _init() async {
    (await _fetchTags()
            .map2(
              _fetchCuisines(),
              (
                final List<HomeModelFilterTag> tags,
                final List<HomeModelFilterCuisine> cuisines,
              ) =>
                  state.copyWith(allTags: tags, allCuisines: cuisines),
            )
            .run())
        .fold(
      (final Exception l) => debugPrint(l.toString()),
      (final HomeModel model) {
        state = model;
      },
    );
  }

  @override
  Future<void> setTagSelected({
    required final String tagId,
    required final bool selected,
  }) async {
    state = state.copyWith(
      allTags: state.allTags
          .map(
            (final HomeModelFilterTag tag) =>
                tag.id == tagId ? tag.copyWith(isSelected: selected) : tag,
          )
          .toList(),
    );
    (await _fetchRecipes(paginationSkip: 0).run()).fold(
      (final Exception exception) => debugPrint(exception.toString()),
      (final List<HomeModelRecipe> recipes) => setRecipesInPageController(
        pageKey: 0,
        newRecipes: recipes,
        replaceRecipes: true,
      ),
    );
  }

  @override
  Future<void> setCuisineSelected({
    required final String cuisineId,
    required final bool selected,
  }) async {
    state = state.copyWith(
      allCuisines: state.allCuisines
          .map(
            (final HomeModelFilterCuisine cuisine) => cuisineId == cuisine.id
                ? cuisine.copyWith(isSelected: selected)
                : cuisine,
          )
          .toList(),
    );
    (await _fetchRecipes(paginationSkip: 0).run()).fold(
      (final Exception exception) => debugPrint(exception.toString()),
      (final List<HomeModelRecipe> recipes) => setRecipesInPageController(
        pageKey: 0,
        newRecipes: recipes,
        replaceRecipes: true,
      ),
    );
  }

  @override
  void goToSingleRecipeView({required final String recipeId}) {
    _globalNavigationService.navigateToNamed(
      uri: NavigationServiceUris.homeSingleRecipeUri.replace(
        queryParameters: <String, String>{
          NavigationServiceUris.singleRecipeIdKey: recipeId,
        },
      ),
    );
  }

  @override
  Future<void> openDialog({
    required final Widget child,
  }) async {
    await _globalNavigationService.showModalBottomSheet(child: child);
  }

  @override
  void fetchRecipes() {
    state.pagingController.retryLastFailedRequest();
  }

  void setRecipesInPageController({
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

  List<HomeModelRecipe> createFilteredRecipes({
    required final List<HomeModelRecipe> recipes,
    required final List<String> tagIds,
    required final List<String> cuisineIds,
  }) =>
      recipes
          .filter(
            (final HomeModelRecipe recipe) =>
                (recipe.tagIds.any(tagIds.contains) || tagIds.isEmpty) &&
                (recipe.cuisineIds.any(cuisineIds.contains) ||
                    cuisineIds.isEmpty),
          )
          .toList();

  TaskEither<Exception, List<HomeModelRecipe>> _fetchRecipes({
    required final int paginationSkip,
  }) =>
      _webClientService
          .fetchRecipes(
            country: state.recipeLocales.first.languageCode,
            skip: paginationSkip,
            take: recipesPerPage,
            tagIds: some(selectedTagTypes(tags: state.allTags)),
            cuisine:
                selectedCuisineSlugs(cuisines: state.allCuisines).firstOption,
          )
          .map(
            (final HomeWebClientModelRecipeResponse recipeResponse) =>
                mapToHomeModelRecipes(
              recipes: recipeResponse.recipes,
              imageResizerService: _webImageSizerService,
            ),
          );

  TaskEither<Exception, List<HomeModelFilterTag>> _fetchTags() =>
      _webClientService
          .fetchAllTags(
            country: state.recipeLocales.first.languageCode,
            take: some(100),
          )
          .map(
            (final List<HomeWebClientModelTag> tags) => tags
                .map(
                  (final HomeWebClientModelTag tag) => HomeModelFilterTag(
                    id: tag.id,
                    displayedName: tag.displayedName,
                    type: tag.type,
                    isSelected: false,
                    numberOfRecipes: tag.numberOfRecipes,
                  ),
                )
                .toList(),
          );

  TaskEither<Exception, List<HomeModelFilterCuisine>> _fetchCuisines() =>
      _webClientService
          .fetchAllCuisines(
            country: state.recipeLocales.first.languageCode,
            take: some(1000),
          )
          .map(
            (final List<HomeWebClientModelCuisine> cuisines) => cuisines
                .map(
                  (final HomeWebClientModelCuisine cuisine) =>
                      HomeModelFilterCuisine(
                    id: cuisine.id,
                    displayedName: cuisine.displayedName,
                    slug: cuisine.slug,
                    isSelected: false,
                    numberOfRecipes: cuisine.numberOfRecipes,
                  ),
                )
                .toList(),
          );
}

List<String> selectedFilterIds({
  required final List<HomeModelFilter> filters,
}) =>
    selectedFilters(filters: filters)
        .map((final HomeModelFilter filter) => filter.id)
        .toList();

List<String> selectedTagTypes({
  required final List<HomeModelFilterTag> tags,
}) =>
    selectedFilters(filters: tags)
        .whereType<HomeModelFilterTag>()
        .map((final HomeModelFilterTag tag) => tag.type)
        .toList();

List<String> selectedCuisineSlugs({
  required final List<HomeModelFilterCuisine> cuisines,
}) =>
    selectedFilters(filters: cuisines)
        .whereType<HomeModelFilterCuisine>()
        .map((final HomeModelFilterCuisine cuisine) => cuisine.slug)
        .toList();

List<HomeModelFilter> selectedFilters({
  required final List<HomeModelFilter> filters,
}) =>
    filters
        .filter((final HomeModelFilter filter) => filter.isSelected)
        .toList();

List<HomeModelRecipe> mapToHomeModelRecipes({
  required final List<HomeWebClientModelRecipe> recipes,
  required final HomeWebImageSizerService imageResizerService,
}) =>
    recipes
        .map(
          (final HomeWebClientModelRecipe recipe) => recipe.imagePath
              .flatMap(
                (final Uri imagePath) => getImageUrlFromImagePath(
                  imageResizerService: imageResizerService,
                  imagePath: imagePath,
                ),
              )
              .map(
                (final Uri imageUri) => HomeModelRecipe(
                  id: recipe.id,
                  displayedAttributes: _mapDisplayedAttributes(
                    displayedAttributes: recipe.displayedAttributes,
                  ),
                  difficulty: recipe.difficulty,
                  ingredients: _mapIngredients(ingredients: recipe.ingredients),
                  yields: _mapYields(yields: recipe.yields),
                  tagIds: recipe.tagIds,
                  imageUri: imageUri,
                  cuisineIds: recipe.cuisineIds,
                ),
              ),
        )
        .whereType<Some<HomeModelRecipe>>()
        .map(
          (final Some<HomeModelRecipe> recipe) => recipe.value,
        )
        .toList();

Option<Uri> getImageUrlFromImagePath({
  required final HomeWebImageSizerService imageResizerService,
  required final Uri imagePath,
}) =>
    imageResizerService
        .getUrl(filePath: imagePath, widthPixels: widthPixels)
        .fold(
      (final Exception l) {
        debugPrint('Exception l');
        return none<Uri>();
      },
      some<Uri>,
    );

HomeModelDisplayedAttributes _mapDisplayedAttributes({
  required final HomeWebClientModelDisplayedAttributes displayedAttributes,
}) =>
    HomeModelDisplayedAttributes(
      name: displayedAttributes.name,
      headline: displayedAttributes.headline,
      description: displayedAttributes.description,
      descriptionMarkdown: displayedAttributes.descriptionMarkdown,
    );

List<HomeModelIngredient> _mapIngredients({
  required final List<HomeWebClientModelIngredient> ingredients,
}) =>
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

List<HomeModelYield> _mapYields({
  required final List<HomeWebClientModelYield> yields,
}) =>
    yields
        .map(
          (final HomeWebClientModelYield yield) => HomeModelYield(
            yield: yield.yield,
            yieldIngredient: yield.yieldIngredient
                .map(
                  (final HomeWebClientModelYieldIngredient ingredient) =>
                      _mapToYieldIngredient(ingredient: ingredient),
                )
                .toList(),
          ),
        )
        .toList();

HomeModelYieldIngredient _mapToYieldIngredient({
  required final HomeWebClientModelYieldIngredient ingredient,
}) =>
    HomeModelYieldIngredient(
      id: ingredient.id,
      amount: ingredient.amount,
      unit: ingredient.unit,
    );
