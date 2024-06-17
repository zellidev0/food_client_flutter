part of 'single_recipe_web_client_service_mixin.dart';

SingleRecipeWebClientModelRecipe _mapToSingleRecipeWebClientModelRecipe({
  required final Query$SingleRecipe$recipes_by_pk recipe,
}) =>
    SingleRecipeWebClientModelRecipe(
      id: recipe.id,
      displayedAttributes:
          _mapToSingleRecipeWebClientModelDisplayedAttributes(recipe),
      difficulty: recipe.difficulty,
      yields: _mapRecipeYields2(
        yieldsJson: recipe.yields_json,
        ingredients: recipe.bridge_recipes_ingredients
            .map(
              (
                final Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients
                    ingredients,
              ) =>
                  optionOf(ingredients.ingredients)
                      .map(_mapToWebClientModelIngredient)
                      .toNullable(),
            )
            .whereNotNull()
            .toList(),
      ),
      tags: _mapBridgeRecipeTags(bridgeRecipesTags: recipe.bridge_recipes_tags),
      imagePath: optionOf(recipe.imagePath).map(Uri.parse),
      steps: optionOf(recipe.steps)
          .flatMap(
            (final String stepsJson) =>
                Option<List<WebClientModelStep>>.tryCatch(
              () => (jsonDecode(stepsJson) as List<Object?>)
                  .map(
                    (final Object? json) => json is Map<String, Object?>
                        ? WebClientModelStep.fromJson(json)
                        : null,
                  )
                  .whereNotNull()
                  .toList(),
            ),
          )
          .map(
            (final List<WebClientModelStep> steps) =>
                steps.map(_mapToSingleRecipeWebClientModelStep).toList(),
          )
          .getOrElse(() => <SingleRecipeWebClientModelStep>[]),
      totalCookingTime: Option<Option<Duration>>.tryCatch(
        () => optionOf(recipe.prepTime).map2(
          optionOf(recipe.totalTime),
          (final String prepTime, final String totalTime) => Duration(
            minutes: int.parse(prepTime.replaceAll(RegExp(r'\D'), '')) +
                int.parse(totalTime.replaceAll(RegExp(r'\D'), '')),
          ),
        ),
      ).flatMap((final Option<Duration> optional) => optional),
      slug: recipe.slug,
    );

SingleRecipeWebClientModelDisplayedAttributes
    _mapToSingleRecipeWebClientModelDisplayedAttributes(
  final Query$SingleRecipe$recipes_by_pk recipe,
) =>
        SingleRecipeWebClientModelDisplayedAttributes(
          name: recipe.name,
          headline: recipe.headline,
          description: recipe.description,
          descriptionMarkdown: optionOf(recipe.descriptionMarkdown),
        );

List<SingleRecipeWebClientModelYield> _mapRecipeYields2({
  required final String yieldsJson,
  required final List<WebClientModelIngredient> ingredients,
}) =>
    Option<List<Map<String, Object?>>>.tryCatch(
      () => (jsonDecode(yieldsJson) as List<Object?>)
          .map((final Object? payload) => payload as Map<String, Object?>?)
          .whereNotNull()
          .toList(),
    )
        .map(
          (final List<Map<String, Object?>> yields) =>
              yields.map(WebClientModelYield.fromJson),
        )
        .map(
          (final Iterable<WebClientModelYield> yields) => yields
              .map(
                (final WebClientModelYield yield) => yield.yields
                    .map(
                      (final int servings) =>
                          _mapSingleRecipeWebClientModelYield(
                        servings: servings,
                        yield: yield,
                        ingredients: ingredients,
                      ),
                    )
                    .toNullable(),
              )
              .whereNotNull()
              .toList(),
        )
        .getOrElse(() => <SingleRecipeWebClientModelYield>[]);

WebClientModelIngredient _mapToWebClientModelIngredient(
  final Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients
      ingredients,
) =>
    WebClientModelIngredient(
      id: ingredients.id,
      country: ingredients.country,
      slug: ingredients.slug,
      name: ingredients.name,
      type: ingredients.type,
      imagePath: optionOf(ingredients.imagePath),
      family: optionOf(ingredients.family).map(
        _mapToWebClientModelIngredientFamily,
      ),
    );

WebClientModelIngredientFamily _mapToWebClientModelIngredientFamily(
  final Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family
      family,
) =>
    WebClientModelIngredientFamily(
      id: family.id,
      type: family.type,
      iconPath: optionOf(family.iconPath),
      name: family.name,
      slug: family.slug,
    );

SingleRecipeWebClientModelYield _mapSingleRecipeWebClientModelYield({
  required final int servings,
  required final WebClientModelYield yield,
  required final List<WebClientModelIngredient> ingredients,
}) =>
    SingleRecipeWebClientModelYield(
      servings: servings,
      ingredients: yield.ingredients
          .map(
            (final WebClientModelYieldIngredient yieldIngredient) => optionOf(
              ingredients.firstWhereOrNull(
                (final WebClientModelIngredient ingredient) =>
                    ingredient.id == yieldIngredient.id,
              ),
            )
                .map(
                  (final WebClientModelIngredient otherIngredient) =>
                      _mapSingleRecipeWebClientModelIngredient(
                    amount: yieldIngredient.amount,
                    unit: yieldIngredient.unit,
                    ingredient: otherIngredient,
                  ),
                )
                .toNullable(),
          )
          .whereNotNull()
          .toList(),
    );

SingleRecipeWebClientModelIngredient _mapSingleRecipeWebClientModelIngredient({
  required final Option<num> amount,
  required final Option<String> unit,
  required final WebClientModelIngredient ingredient,
}) =>
    SingleRecipeWebClientModelIngredient(
      ingredientId: ingredient.id,
      amount: amount.map((final num number) => number.toDouble()),
      unit: unit,
      imagePath: ingredient.imagePath.map(Uri.parse),
      slug: ingredient.slug,
      displayedName: ingredient.name,
      family: ingredient.family.map(
        _mapSingleRecipeWebClientModelIngredientFamily,
      ),
    );

SingleRecipeWebClientModelIngredientFamily
    _mapSingleRecipeWebClientModelIngredientFamily(
  final WebClientModelIngredientFamily family,
) =>
        SingleRecipeWebClientModelIngredientFamily(
          id: family.id,
          slug: family.slug,
          type: family.type,
          iconPath: family.iconPath,
          name: family.name,
        );

List<SingleRecipeWebClientModelTag> _mapBridgeRecipeTags({
  required final List<Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags>
      bridgeRecipesTags,
}) =>
    bridgeRecipesTags
        .map(
          (final Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags tags) =>
              optionOf(tags.tags)
                  .map(_mapToSingleRecipeWebClientModelTag)
                  .toNullable(),
        )
        .whereNotNull()
        .toList();

SingleRecipeWebClientModelTag _mapToSingleRecipeWebClientModelTag(
  final Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags tag,
) =>
    SingleRecipeWebClientModelTag(
      id: tag.id,
      slug: tag.slug,
      displayedName: tag.name,
    );

SingleRecipeWebClientModelStep _mapToSingleRecipeWebClientModelStep(
  final WebClientModelStep step,
) =>
    SingleRecipeWebClientModelStep(
      instructionMarkdown: step.instructionsMarkdown,
      imagePath: optionOf(step.images.firstOrNull).map(
        (final WebClientModelStepImage image) => Uri.parse(image.path),
      ),
    );
