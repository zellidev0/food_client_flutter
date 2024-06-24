import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/generated/locale_keys.g.dart';
import 'package:food_client/pages/common/error.dart';
import 'package:food_client/pages/common/view_state.dart';
import 'package:food_client/pages/features/home/cubit/home_state.dart';
import 'package:food_client/pages/features/home/services/home_navigation_service.dart';
import 'package:food_client/pages/features/home/services/home_persistence_service.dart';
import 'package:food_client/pages/features/home/services/home_web_client_service.dart';
import 'package:food_client/pages/features/home/services/home_web_image_sizer_service.dart';
import 'package:food_client/services/logging_service/logging_service.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

part 'home_cubit_utils.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeNavigationService _navigationService;
  final HomeWebClientService _webClientService;
  final HomeWebImageSizerService _webImageSizerService;
  final HomePersistenceService _persistenceService;
  final LoggingService _logger;
  HomeCubit({
    required final HomeNavigationService navigationService,
    required final HomeWebClientService webClientService,
    required final HomeWebImageSizerService webImageSizerService,
    required final HomePersistenceService persistenceService,
    required final List<Locale> recipeLocales,
    required final LoggingService logger,
  })  : _navigationService = navigationService,
        _webClientService = webClientService,
        _webImageSizerService = webImageSizerService,
        _persistenceService = persistenceService,
        _logger = logger,
        super(
          HomeState(
            paginationController:
                PagingController<int, HomeStateRecipe>(firstPageKey: 0),
            availableFilters: const ViewState<List<HomeStateFilter>>.loading(),
            recipeLocales: recipeLocales,
          ),
        ) {
    scheduleMicrotask(
      () => unawaited(
        Task.sequenceListSeq(
          <Task<void>>[
            _fetchFiltersAndSetState(),
            _listenToPaginationController(
              paginationController: state.paginationController,
            ),
          ],
        ).run(),
      ),
    );
  }

  Task<void> _fetchFiltersAndSetState() => _webClientService
          .fetchTags(
            take: some(100),
            recipeLocales: state.recipeLocales,
          )
          .map2(
            _webClientService.fetchCuisines(
              take: some(1000),
              recipeLocales: state.recipeLocales,
            ),
            (
              List<HomeWebClientModelTag> tags,
              List<HomeWebClientModelCuisine> cuisines,
            ) =>
                state.copyWith(
              availableFilters: <HomeStateFilter>[
                ...tags.map(_mapToTag),
                ...cuisines.map(_mapToCuisine),
              ].toViewStateData(),
            ),
          )
          .match(
        (final Exception error) {
          _logger.error(
            MyError(
              message: 'Failed to fetch filters',
              originalError: error,
            ),
          );

          _navigationService.showSnackBar(
            message: LocaleKeys.ui_home_view_error_states_fetching_filters.tr(),
          );
          emit(state.copyWith(availableFilters: error.toViewStateError()));
        },
        (final HomeState newState) {
          _logger.info(
            message: 'Fetched filters: ${newState.availableFilters}',
          );
          emit(newState);
        },
      );

  Task<void> _listenToPaginationController({
    required PagingController<int, HomeStateRecipe> paginationController,
  }) {
    Task<void> fetchRecipesTask(List<HomeStateFilter> filters, int pageKey) =>
        _fetchRecipes(
          paginationSkip: 0,
          tagIds: _selectedFilterIds(
            type: filters.whereType<HomeStateFilterTag>().toList(),
          ),
          cuisineIds: _selectedFilterIds(
            type: filters.whereType<HomeStateFilterCuisine>().toList(),
          ),
        ).match(
          (final Exception error) {
            _logger.error(
              MyError(
                message: 'Error fetching more recipes for filter',
                originalError: error,
              ),
            );
            _navigationService.showSnackBar(
              message:
                  LocaleKeys.ui_home_view_error_states_fetching_recipes.tr(),
            );
          },
          (final List<HomeStateRecipe> recipes) {
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
          state.availableFilters.maybeWhen(
            data: (List<HomeStateFilter> data) =>
                unawaited(fetchRecipesTask(data, pageKey).run()),
            orElse: () {
              _logger.error(MyError(message: 'Error fetching with filters'));

              _navigationService.showSnackBar(
                message: LocaleKeys
                    .ui_home_view_error_states_fetching_recipes_for_filter
                    .tr(),
              );
              return null;
            },
          );
        },
      ),
    ).andThen(() => fetchRecipesTask(<HomeStateFilter>[], 0));
  }

  void goToHistoryView() => _navigationService.navigateToNamed(
        uri: NavigationServiceUris.historyRouteUri,
      );

  void setFiltersSelected({
    required final String filterId,
    required final bool isSelected,
  }) =>
      state.availableFilters.maybeWhen(
        data: (List<HomeStateFilter> data) => unawaited(
          _fetchRecipes(
            paginationSkip: 0,
            tagIds: _selectedFilterIds(
              type: data.whereType<HomeStateFilterTag>().toList(),
            ),
            cuisineIds: _selectedFilterIds(
              type: data.whereType<HomeStateFilterCuisine>().toList(),
            ),
          ).match(
            (final Exception error) {
              _logger.error(
                MyError(
                  message: 'Error fetching recipes for filter',
                  originalError: error,
                ),
              );

              _navigationService.showSnackBar(
                message: LocaleKeys
                    .ui_home_view_error_states_fetching_recipes_for_filter
                    .tr(),
              );
            },
            (final List<HomeStateRecipe> recipes) {
              emit(
                state.copyWith(
                  availableFilters: state.availableFilters.mapData(
                    (List<HomeStateFilter> filters) => _replaceWIthId(
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
          _logger.error(MyError(message: 'Error setting filters'));

          _navigationService.showSnackBar(
            message: LocaleKeys
                .ui_home_view_error_states_fetching_recipes_for_filter
                .tr(),
          );
          return null;
        },
      );

  void goToSingleRecipeView({
    required final String recipeId,
    required final String recipeTitle,
    required final Uri imagePath,
  }) =>
      unawaited(
        _persistenceService
            .addRecipeOpeningToHistory(
              recipeId: recipeId,
              recipeTitle: recipeTitle,
              imagePath: some(imagePath),
              createdAt: DateTime.now(),
            )
            .match(
              _logger.error,
              (_) => null,
            )
            .andThen(
              () => Task<void>.of(
                _navigationService.navigateToNamed(
                  uri: NavigationServiceUris.singleRecipe(recipeId: recipeId),
                ),
              ),
            )
            .run(),
      );

  TaskEither<Exception, List<HomeStateRecipe>> _fetchRecipes({
    required final int paginationSkip,
    required final List<String> tagIds,
    required final List<String> cuisineIds,
  }) =>
      _webClientService
          .fetchRecipes(
            recipeLocales: state.recipeLocales,
            skip: paginationSkip,
            take: recipesPerPage,
            tagIds: some(tagIds),
            cuisineId: cuisineIds
                .firstOption, // TODO(julian): handle this when the backend supports more than one cuisine
          )
          .map(
            (final HomeWebClientModelRecipeResponse recipeResponse) =>
                _mapToHomeStateRecipes(
              recipes: recipeResponse.recipes,
              imageResizerService: _webImageSizerService,
              logger: _logger,
            ),
          );

  void _setRecipesInPageController({
    required final int pageKey,
    required final List<HomeStateRecipe> newRecipes,
    required final bool replaceRecipes,
  }) {
    final bool isLastPage = newRecipes.length < recipesPerPage;
    if (replaceRecipes) {
      state.paginationController
        ..value = PagingState<int, HomeStateRecipe>(
          itemList: newRecipes,
          error: null,
          nextPageKey: 0,
        )
        ..refresh();
    } else {
      if (isLastPage) {
        state.paginationController.appendLastPage(newRecipes);
      } else {
        final int nextPageKey = pageKey + newRecipes.length;
        state.paginationController.appendPage(newRecipes, nextPageKey);
      }
    }
  }

  Future<void> openDialog({
    required final Widget child,
  }) async =>
      await _navigationService.showModalBottomSheet(child: child);

  Future<void> retryLastRecipeFetching() async {
    state.paginationController.retryLastFailedRequest();
  }

  void clearFilters({required final Type type}) =>
      state.availableFilters.maybeWhen(
        data: (List<HomeStateFilter> data) => unawaited(
          _fetchRecipes(
            paginationSkip: 0,
            tagIds: type == HomeStateFilterTag
                ? <String>[]
                : _selectedFilterIds(
                    type: data.whereType<HomeStateFilterTag>().toList(),
                  ),
            cuisineIds: type == HomeStateFilterCuisine
                ? <String>[]
                : _selectedFilterIds(
                    type: data.whereType<HomeStateFilterCuisine>().toList(),
                  ),
          ).match(
            (final Exception error) {
              _logger.error(
                MyError(
                  message: 'Error fetching recipes for filter',
                  originalError: error,
                ),
              );

              _navigationService.showSnackBar(
                message: LocaleKeys
                    .ui_home_view_error_states_fetching_recipes_for_filter
                    .tr(),
              );
            },
            (final List<HomeStateRecipe> recipes) {
              emit(
                state.copyWith(
                  availableFilters: state.availableFilters
                      .mapData((List<HomeStateFilter> filters) {
                    if (type == HomeStateFilterTag) {
                      return filters
                          .map(
                            (HomeStateFilter filter) =>
                                filter is HomeStateFilterTag
                                    ? filter.copyWith(isSelected: false)
                                    : filter,
                          )
                          .toList();
                    } else {
                      return filters
                          .map(
                            (HomeStateFilter filter) =>
                                filter is HomeStateFilterCuisine
                                    ? filter.copyWith(isSelected: false)
                                    : filter,
                          )
                          .toList();
                    }
                  }),
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
          _logger.error(MyError(message: 'Error setting filters'));

          _navigationService.showSnackBar(
            message: LocaleKeys
                .ui_home_view_error_states_fetching_recipes_for_filter
                .tr(),
          );
          return null;
        },
      );
}
