import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/ui/single_recipe/single_recipe_model.dart';
import 'package:food_client/ui/single_recipe/single_recipe_navigation_service.dart';
import 'package:food_client/ui/single_recipe/single_recipe_persistence_service.dart';
import 'package:food_client/ui/single_recipe/single_recipe_view.dart';
import 'package:food_client/ui/single_recipe/single_recipe_web_client_service.dart';
import 'package:food_client/ui/single_recipe/single_recipe_web_image_sizer_service.dart';
import 'package:fpdart/fpdart.dart';

class SingleRecipeControllerImplementation extends SingleRecipeController {
  late final SingleRecipeWebClientService _webClientService;
  late final SingleRecipeWebImageSizerService _webImageSizerService;
  late final SingleRecipeNavigationService _navigationService;
  late final SingleRecipePersistenceService _persistenceService;

  SingleRecipeControllerImplementation(
    super.state, {
    required final String recipeId,
    required final SingleRecipeWebClientService webClientService,
    required final SingleRecipeWebImageSizerService webImageSizerService,
    required final SingleRecipeNavigationService navigationService,
    required final SingleRecipePersistenceService persistenceService,
  })  : _webClientService = webClientService,
        _webImageSizerService = webImageSizerService,
        _navigationService = navigationService,
        _persistenceService = persistenceService {
    unawaited(init(initialTask: fetchSingleRecipeTask(recipeId: recipeId)));
  }

  Future<void> init({
    required final TaskEither<Exception, SingleRecipeModel> initialTask,
  }) async {
    (await initialTask.run()).fold(
      (final Exception l) => debugPrint(l.toString()),
      (final SingleRecipeModel model) {
        state = model;
      },
    );
  }

  @override
  void setSelectedYield({required final int yield}) {
    state = state.copyWith(selectedYield: some(yield));
  }

  @override
  void goBack() {
    _navigationService.goBackToNamed(uri: NavigationServiceUris.homeRouteUri);
  }

  @override
  Future<void> addIngredientToShoppingCart({
    required final SingleRecipeModelIngredient ingredient,
    required final String recipeId,
  }) async {
    (await TaskEither<Exception, void>.fromTask(
      _persistenceService.addIngredient(
        ingredient: SingleRecipePersistenceServiceIngredient(
          isTickedOff: false,
          recipeId: recipeId,
          imageUrl: ingredient.imageUrl,
          id: ingredient.id,
          slug: ingredient.slug,
          displayedName: ingredient.displayedName,
          amount: ingredient.amount,
          unit: ingredient.unit,
        ),
      ),
    ).andThen(() => fetchSingleRecipeTask(recipeId: recipeId)).run())
        .fold(
      (final Exception exception) =>
          debugPrint('Error adding ingredient: $exception'),
      (final SingleRecipeModel recipeModel) {
        state = recipeModel;
      },
    );
  }

  @override
  Future<void> removeIngredientFromShoppingCart({
    required final SingleRecipeModelIngredient ingredient,
    required final String recipeId,
  }) async {
    (await TaskEither<Exception, void>.fromTask(
      _persistenceService.removeIngredient(ingredientId: ingredient.id),
    ).andThen(() => fetchSingleRecipeTask(recipeId: recipeId)).run())
        .fold(
      (final Exception exception) =>
          debugPrint('Error removing ingredient: $exception'),
      (final SingleRecipeModel recipeModel) {
        state = recipeModel;
      },
    );
  }

  TaskEither<Exception, SingleRecipeModel> fetchSingleRecipeTask({
    required final String recipeId,
  }) =>
      _webClientService.fetchSingleRecipe(recipeId: recipeId).map(
            (final SingleRecipeWebClientModelRecipe recipe) =>
                mapToSingleRecipeModelRecipe(
              recipe: recipe,
              imageResizerService: _webImageSizerService,
              persistenceService: _persistenceService,
            ),
          );
}

SingleRecipeModel mapToSingleRecipeModelRecipe({
  required final SingleRecipeWebClientModelRecipe recipe,
  required final SingleRecipeWebImageSizerService imageResizerService,
  required final SingleRecipePersistenceService persistenceService,
}) =>
    SingleRecipeModel(
      recipe: Either<Exception, Option<SingleRecipeModelRecipe>>.right(
        some(
          SingleRecipeModelRecipe(
            id: recipe.id,
            displayedAttributes: _mapDisplayedAttributes(
              displayedAttributes: recipe.displayedAttributes,
            ),
            difficulty: recipe.difficulty,
            yields: _mapYields(
              yields: recipe.yields,
              imageResizerService: imageResizerService,
              persistenceService: persistenceService,
            ),
            imageUri: recipe.imagePath.flatMap(
              (final Uri imagePath) => imageResizerService
                  .getUrl(
                    filePath: imagePath,
                    widthPixels: 1000,
                  )
                  .toOption(),
            ),
            tags: _mapTags(tags: recipe.tags),
            steps: _mapSteps(
              steps: recipe.steps,
              imageResizerService: imageResizerService,
            ),
          ),
        ),
      ),
      selectedYield: optionOf(recipe.yields.firstOrNull).flatMap(
        (final SingleRecipeWebClientModelYield yield) => yield.yields,
      ),
    );

SingleRecipeModelDisplayedAttributes _mapDisplayedAttributes({
  required final SingleRecipeWebClientModelDisplayedAttributes
      displayedAttributes,
}) =>
    SingleRecipeModelDisplayedAttributes(
      name: displayedAttributes.name,
      headline: displayedAttributes.headline,
      description: displayedAttributes.description,
      descriptionMarkdown: displayedAttributes.descriptionMarkdown,
    );

List<SingleRecipeModelTag> _mapTags({
  required final List<SingleRecipeWebClientModelTag> tags,
}) =>
    tags
        .map(
          (final SingleRecipeWebClientModelTag tag) => SingleRecipeModelTag(
            id: tag.id,
            slug: tag.slug,
            displayedName: tag.displayedName,
          ),
        )
        .toList();

List<SingleRecipeModelStep> _mapSteps({
  required final List<SingleRecipeWebClientModelStep> steps,
  required final SingleRecipeWebImageSizerService imageResizerService,
}) =>
    steps
        .map(
          (final SingleRecipeWebClientModelStep step) => SingleRecipeModelStep(
            instructionMarkdown: step.instructionMarkdown,
            imageUrl: step.imagePath.flatMap(
              (final Uri imagePath) => imageResizerService
                  .getUrl(
                    filePath: imagePath,
                    widthPixels: 1000,
                  )
                  .toOption(),
            ),
          ),
        )
        .toList();

List<SingleRecipeModelYield> _mapYields({
  required final List<SingleRecipeWebClientModelYield> yields,
  required final SingleRecipeWebImageSizerService imageResizerService,
  required final SingleRecipePersistenceService persistenceService,
}) =>
    yields
        .map(
          (final SingleRecipeWebClientModelYield yield) =>
              SingleRecipeModelYield(
            yields: yield.yields,
            ingredients: yield.ingredients
                .map(
                  (
                    final SingleRecipeWebClientModelIngredient ingredient,
                  ) =>
                      SingleRecipeModelIngredient(
                    id: ingredient.id,
                    slug: ingredient.slug,
                    displayedName: ingredient.displayedName,
                    imageUrl: ingredient.imagePath.flatMap(
                      (final Uri imagePath) => imageResizerService
                          .getUrl(
                            filePath: imagePath,
                            widthPixels: 500,
                          )
                          .toOption(),
                    ),
                    amount: ingredient.amount,
                    unit: ingredient.unit,
                    isInShoppingCard: persistenceService.hasSavedIngredient(
                      ingredientId: ingredient.id,
                    ),
                  ),
                )
                .toList(),
          ),
        )
        .toList();
