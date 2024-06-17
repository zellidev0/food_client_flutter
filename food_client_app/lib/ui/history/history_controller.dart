import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/commons/constants.dart';
import 'package:food_client/pages/common/error.dart';
import 'package:food_client/pages/common/view_state.dart';
import 'package:food_client/services/logging_service/logging_service.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';

import 'package:food_client/ui/history/history_model.dart';
import 'package:food_client/ui/history/history_view.dart';
import 'package:food_client/ui/history/services/history_navigation_service.dart';
import 'package:food_client/ui/history/services/history_persistence_service.dart';
import 'package:fpdart/fpdart.dart';

class HistoryControllerImplementation extends Cubit<HistoryModel>
    implements HistoryController {
  HistoryPersistenceService persistenceService;
  HistoryNavigationService navigationService;
  LoggingService logger;
  HistoryControllerImplementation({
    required this.persistenceService,
    required this.navigationService,
    required this.logger,
  }) : super(
          const HistoryModel(
            recipes: ViewState<List<HistoryModelRecipe>>.loading(),
          ),
        ) {
    scheduleMicrotask(fetchHistory().run);
  }

  Task<void> fetchHistory() => persistenceService.getHistoryRecipes().match(
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
    emit(
      state.copyWith(
        recipes: ViewState<List<HistoryModelRecipe>>.error(error),
      ),
    );
    logger.error(error);
  }
}
