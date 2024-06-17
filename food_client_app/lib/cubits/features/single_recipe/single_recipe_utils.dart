part of 'single_recipe_cubit.dart';

const int widthPixelsDescriptionSteps = 512;
const int widthPixelsIngredientThumbNail = 256;

SingleRecipePersistenceServiceIngredient
    _mapToSingleRecipePersistenceServiceIngredient({
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
          family: ingredient.family.map(
            (final SingleRecipeModelIngredientFamily family) =>
                SingleRecipePersistenceServiceIngredientFamily(
              id: family.id,
              type: family.type,
              iconPath: family.iconPath,
              name: family.name,
              slug: family.slug,
            ),
          ),
        );

SingleRecipeModel mapToSingleRecipeModelRecipe({
  required final SingleRecipeWebClientModelRecipe recipe,
  required final SingleRecipeWebImageSizerService imageResizerService,
  required final SingleRecipePersistenceService persistenceService,
}) =>
    SingleRecipeModel(
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
      totalCookingTime: recipe.totalCookingTime,
      slug: recipe.slug,
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
                    widthPixels: widthPixelsDescriptionSteps,
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
                          .getUrl(
                            filePath: imagePath,
                            widthPixels: widthPixelsIngredientThumbNail,
                          )
                          .toOption(),
                    ),
                    amount: ingredient.amount,
                    unit: ingredient.unit,
                    family: ingredient.family.map(
                      (
                        final SingleRecipeWebClientModelIngredientFamily family,
                      ) =>
                          SingleRecipeModelIngredientFamily(
                        id: family.id,
                        type: family.type,
                        iconPath: family.iconPath,
                        name: family.name,
                        slug: family.slug,
                      ),
                    ),
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
