import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/commons/constants.dart';
import 'package:food_client/pages/common/error.dart';
import 'package:food_client/pages/common/view_state.dart';
import 'package:food_client/pages/features/history/cubit/history_state.dart';
import 'package:food_client/pages/features/history/services/history_navigation_service.dart';
import 'package:food_client/pages/features/history/services/history_persistence_service.dart';
import 'package:food_client/services/logging_service/logging_service.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:fpdart/fpdart.dart';

class HistoryCubit extends Cubit<HistoryState> {
  final HistoryNavigationService _navigationService;
  final HistoryPersistenceService _persistenceService;
  final LoggingService _logger;
  HistoryCubit({
    required final HistoryNavigationService navigationService,
    required final HistoryPersistenceService persistenceService,
    required final LoggingService logger,
  })  : _navigationService = navigationService,
        _persistenceService = persistenceService,
        _logger = logger,
        super(
          const HistoryState(
            recipes: ViewState<List<HistoryStateRecipe>>.loading(),
          ),
        ) {
    scheduleMicrotask(fetchHistory().run);
  }

  Task<void> fetchHistory() => _persistenceService.getHistoryRecipes().match(
        _handleError,
        (List<HistoryPersistenceServiceModelRecipe> recipes) => emit(
          state.copyWith(
            recipes: recipes
                .sorted((_, __) => _.createdAt.isBefore(__.createdAt) ? 1 : -1)
                .fold<List<HistoryPersistenceServiceModelRecipe>>(
                    <HistoryPersistenceServiceModelRecipe>[], (
                  List<HistoryPersistenceServiceModelRecipe> uniqueRecipes,
                  HistoryPersistenceServiceModelRecipe recipe,
                ) {
                  if (uniqueRecipes.isEmpty ||
                      uniqueRecipes.last.recipeId != recipe.recipeId) {
                    uniqueRecipes.add(recipe);
                  }
                  return uniqueRecipes;
                })
                .map(
                  (HistoryPersistenceServiceModelRecipe recipe) =>
                      HistoryStateRecipe(
                    id: recipe.recipeId,
                    title: recipe.title,
                    imageUri: recipe.imagePath,
                    createdAt:
                        Constants.dateWithTimeFormat.format(recipe.createdAt),
                  ),
                )
                .toList()
                .toViewStateData(),
          ),
        ),
      );

  void goToSingleRecipeView({required String recipeId}) =>
      _navigationService.navigateToNamed(
        uri: NavigationServiceUris.singleRecipe(recipeId: recipeId),
      );

  void goBack() => _navigationService.goBack();

  void _handleError(MyError error) {
    emit(
      state.copyWith(
        recipes: ViewState<List<HistoryStateRecipe>>.error(error),
      ),
    );
    _logger.error(error);
  }
}
