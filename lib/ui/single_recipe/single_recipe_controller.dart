import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
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
    unawaited(
      setRecipe(initialRecipeTask: fetchSingleRecipeTask(recipeId: recipeId)),
    );
  }

  Future<void> setRecipe({
    required final TaskEither<Exception, SingleRecipeModelRecipe>
        initialRecipeTask,
  }) async {
    final Either<Exception, SingleRecipeModelRecipe> recipeTask =
        await initialRecipeTask.run();
    state = SingleRecipeModel(
      recipe: recipeTask.map(some),
      selectedYield: recipeTask.toOption().flatMap(
            (final SingleRecipeModelRecipe recipe) =>
                recipe.yields.firstOption.flatMap(
              (final SingleRecipeModelYield yield) => yield.yields,
            ),
          ),
    );
  }

  @override
  void setSelectedYield({
    required final int yield,
    required final String recipeId,
  }) {
    state = state.copyWith(selectedYield: some(yield));
    addAllCurrentlySelectedYieldIngredientsToShoppingCart(
      yield: yield,
      recipeId: recipeId,
    );
  }

  void addAllCurrentlySelectedYieldIngredientsToShoppingCart({
    required final int yield,
    required final String recipeId,
  }) {
    state.recipe
        .flatMap(
          (final Option<SingleRecipeModelRecipe> optionalRecipe) =>
              optionalRecipe
                  .flatMap(
                    (final SingleRecipeModelRecipe recipe) => optionOf(
                      recipe.yields.firstWhereOrNull(
                        (final SingleRecipeModelYield element) =>
                            element.yields == some(yield),
                      ),
                    ),
                  )
                  .toEither(Exception.new),
        )
        .fold(
          (final Exception exception) => debugPrint(exception.toString()),
          (final SingleRecipeModelYield singleYield) => unawaited(
            addIngredientsToShoppingCart(
              ingredients: singleYield.ingredients,
              recipeId: recipeId,
            ),
          ),
        );
  }

  @override
  void goBack() {
    _navigationService.goBack();
  }

  @override
  Future<void> addIngredientToShoppingCart({
    required final SingleRecipeModelIngredient ingredient,
    required final String recipeId,
  }) async {
    (await TaskEither<Exception, void>.fromTask(
      _persistenceService.addIngredient(
        ingredient: mapToSingleRecipePersistenceServiceIngredient(
          recipeId: recipeId,
          ingredient: ingredient,
        ),
      ),
    ).run())
        .fold(
      (final Exception exception) =>
          debugPrint('Error removing ingredient: $exception'),
      (final _) {
        updateIngredientsWIthShoppingCartInfo(
          ingredient: ingredient,
          recipeId: recipeId,
        );
      },
    );
  }

  void updateIngredientsWIthShoppingCartInfo({
    required final SingleRecipeModelIngredient ingredient,
    required final String recipeId,
  }) =>
      state = state.copyWith(
        recipe: state.recipe.map(
          (final Option<SingleRecipeModelRecipe> r) => r.map(
            (final SingleRecipeModelRecipe recipe) => recipe.copyWith(
              yields: recipe.yields
                  .map(
                    (final SingleRecipeModelYield yield) => yield.copyWith(
                      ingredients: yield.ingredients
                          .map(
                            (final SingleRecipeModelIngredient newIngredient) =>
                                newIngredient.copyWith(
                              isInShoppingCard:
                                  _persistenceService.isInShoppingCart(
                                ingredientId: newIngredient.ingredientId,
                                recipeId: recipeId,
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      );

  Future<void> addIngredientsToShoppingCart({
    required final List<SingleRecipeModelIngredient> ingredients,
    required final String recipeId,
  }) async {
    (await TaskEither<Exception, void>.fromTask(
      _persistenceService.addIngredients(
        ingredients: ingredients
            .map(
              (final SingleRecipeModelIngredient ingredient) =>
                  mapToSingleRecipePersistenceServiceIngredient(
                recipeId: recipeId,
                ingredient: ingredient,
              ),
            )
            .toList(),
      ),
    ).run())
        .fold(
      (final Exception exception) =>
          debugPrint('Error removing ingredient: $exception'),
      (final _) {},
    );
  }

  @override
  Future<void> removeIngredientFromShoppingCart({
    required final SingleRecipeModelIngredient ingredient,
    required final String recipeId,
  }) async {
    (await TaskEither<Exception, void>.fromTask(
      _persistenceService.removeIngredient(
        ingredientId: ingredient.ingredientId,
        recipeId: recipeId,
      ),
    ).run())
        .fold(
      (final Exception exception) =>
          debugPrint('Error removing ingredient: $exception'),
      (final _) {
        updateIngredientsWIthShoppingCartInfo(
          ingredient: ingredient,
          recipeId: recipeId,
        );
      },
    );
  }

  TaskEither<Exception, SingleRecipeModelRecipe> fetchSingleRecipeTask({
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

SingleRecipePersistenceServiceIngredient
    mapToSingleRecipePersistenceServiceIngredient({
  required final String recipeId,
  required final SingleRecipeModelIngredient ingredient,
}) =>
        SingleRecipePersistenceServiceIngredient(
          isTickedOff: false,
          recipeId: recipeId,
          imageUrl: ingredient.imageUrl,
          ingredientId: ingredient.ingredientId,
          slug: ingredient.slug,
          displayedName: ingredient.displayedName,
          amount: ingredient.amount,
          unit: ingredient.unit,
        );

SingleRecipeModelRecipe mapToSingleRecipeModelRecipe({
  required final SingleRecipeWebClientModelRecipe recipe,
  required final SingleRecipeWebImageSizerService imageResizerService,
  required final SingleRecipePersistenceService persistenceService,
}) =>
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
        recipeId: recipe.id,
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
  required final String recipeId,
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
                    ingredientId: ingredient.ingredientId,
                    slug: ingredient.slug,
                    displayedName: ingredient.displayedName,
                    imageUrl: ingredient.imagePath.flatMap(
                      (final Uri imagePath) => imageResizerService
                          .getUrl(filePath: imagePath, widthPixels: 500)
                          .toOption(),
                    ),
                    amount: ingredient.amount,
                    unit: ingredient.unit,
                    isInShoppingCard: persistenceService.isInShoppingCart(
                      ingredientId: ingredient.ingredientId,
                      recipeId: recipeId,
                    ),
                  ),
                )
                .toList(),
          ),
        )
        .toList();
