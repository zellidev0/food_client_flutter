import 'dart:async';

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
                recipe.yields.firstOption.map(
              (final SingleRecipeModelYield yield) => yield.servings,
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
  }

  @override
  void goBack() {
    _navigationService.goBack();
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

  @override
  void openAddToShoppingCartDialog({
    required final SingleRecipeModelRecipe recipe,
    required final String recipeId,
  }) {
    unawaited(
      _navigationService.showDialog(
        title: 'Add to shopping cart?',
        content:
            'Add this recipe to the shopping cart, with the following serving',
        actions: some(
          recipe.yields
              .map(
                (final SingleRecipeModelYield yield) =>
                    NavigationServiceDialogAction(
                  text: '${yield.servings} Persons',
                  onPressed: () {
                    unawaited(
                      _persistenceService
                          .addRecipe(
                            recipe: SingleRecipePersistenceServiceRecipe(
                              ingredients: yield.ingredients
                                  .map(
                                    (
                                      final SingleRecipeModelIngredient
                                          ingredient,
                                    ) =>
                                        mapToSingleRecipePersistenceServiceIngredient(
                                      ingredient: ingredient,
                                    ),
                                  )
                                  .toList(),
                              recipeId: recipeId,
                              servings: yield.servings,
                              imagePath: recipe.imagePath,
                              title: recipe.displayedAttributes.name,
                            ),
                          )
                          .run(),
                    );
                  },
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

SingleRecipePersistenceServiceIngredient
    mapToSingleRecipePersistenceServiceIngredient({
  required final SingleRecipeModelIngredient ingredient,
}) =>
        SingleRecipePersistenceServiceIngredient(
          isTickedOff: false,
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
      imageUrl: recipe.imagePath.flatMap(
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
      imagePath: recipe.imagePath,
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
            servings: yield.servings,
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
                  ),
                )
                .toList(),
            isInShoppingCart: persistenceService.isInShoppingCart(
              servings: yield.servings,
              recipeId: recipeId,
            ),
          ),
        )
        .toList();
