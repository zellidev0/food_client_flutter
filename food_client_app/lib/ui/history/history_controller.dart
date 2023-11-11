import 'dart:async';

import 'package:collection/collection.dart';
import 'package:food_client/commons/constants.dart';
import 'package:food_client/commons/error.dart';
import 'package:food_client/commons/view_state.dart';
import 'package:food_client/services/logging_service/logging_service.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart'
    hide navigationService;

import 'package:food_client/ui/history/history_model.dart';
import 'package:food_client/ui/history/history_view.dart';
import 'package:food_client/ui/history/services/history_navigation_service.dart';
import 'package:food_client/ui/history/services/history_persistence_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'history_controller.g.dart';

@riverpod
class HistoryControllerImplementation extends _$HistoryControllerImplementation
    implements HistoryController {
  @override
  HistoryModel build({
    required final HistoryPersistenceService persistenceService,
    required final HistoryNavigationService navigationService,
    required final LoggingService logger,
  }) {
    scheduleMicrotask(fetchHistory().run);
    return const HistoryModel(
      recipes: ViewState<List<HistoryModelRecipe>>.loading(),
    );
  }

  Task<void> fetchHistory() => persistenceService.getHistoryRecipes().match(
        _handleError,
        (List<HistoryPersistenceServiceModelRecipe> recipes) =>
            state = state.copyWith(
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
                    HistoryModelRecipe(
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
      );

  @override
  void goToSingleRecipeView({required String recipeId}) =>
      navigationService.navigateToNamed(
        uri: NavigationServiceUris.singleRecipe(recipeId: recipeId),
      );

  @override
  void goBack() => navigationService.goBack();

  void _handleError(MyError error) {
    state = state.copyWith(
      recipes: ViewState<List<HistoryModelRecipe>>.error(error),
    );
    logger.error(error);
  }
}
