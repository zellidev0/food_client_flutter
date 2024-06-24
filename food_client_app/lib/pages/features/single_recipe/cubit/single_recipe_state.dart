import 'package:food_client/pages/common/view_state.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_recipe_state.freezed.dart';

@freezed
class SingleRecipeState with _$SingleRecipeState {
  const factory SingleRecipeState({
    required final ViewState<SingleRecipeStateRecipe> recipe,
    required final Option<int> selectedYield,
  }) = _SingleRecipeState;
}

@freezed
class SingleRecipeStateRecipe with _$SingleRecipeStateRecipe {
  const factory SingleRecipeStateRecipe({
    required final String id,
    required final String slug,
    required final SingleRecipeStateDisplayedAttributes displayedAttributes,
    required final int difficulty,
    required final Option<Duration> totalCookingTime,
    required final List<SingleRecipeStateYield> yields,
    required final List<SingleRecipeStateTag> tags,
    required final List<SingleRecipeStateStep> steps,
    required final Option<Uri> imageUrl,
    required final Option<Uri> imagePath,
  }) = _SingleRecipeStateRecipe;
}

@freezed
class SingleRecipeStateDisplayedAttributes
    with _$SingleRecipeStateDisplayedAttributes {
  const factory SingleRecipeStateDisplayedAttributes({
    required final String name,
    required final String headline,
    required final String description,
    required final Option<String> descriptionMarkdown,
  }) = _SingleRecipeStateDisplayedAttributes;
}

@freezed
class SingleRecipeStateStep with _$SingleRecipeStateStep {
  const factory SingleRecipeStateStep({
    required final String instructionMarkdown,
    required final Option<Uri> imageUrl,
  }) = _SingleRecipeStateStep;
}

@freezed
class SingleRecipeStateYield with _$SingleRecipeStateYield {
  const factory SingleRecipeStateYield({
    required final bool isInShoppingCart,
    required final int servings,
    required final List<SingleRecipeStateIngredient> ingredients,
  }) = _SingleRecipeStateYield;
}

@freezed
class SingleRecipeStateTag with _$SingleRecipeStateTag {
  const factory SingleRecipeStateTag({
    required final String id,
    required final String slug,
    required final String displayedName,
  }) = _SingleRecipeStateTag;
}

@freezed
class SingleRecipeStateIngredient with _$SingleRecipeStateIngredient {
  const factory SingleRecipeStateIngredient({
    required final Option<Uri> imageUrl,
    required final String ingredientId,
    required final String slug,
    required final String displayedName,
    required final Option<double> amount,
    required final Option<String> unit,
    required final Option<SingleRecipeStateIngredientFamily> family,
  }) = _SingleRecipeStateIngredient;
}

@freezed
class SingleRecipeStateIngredientFamily
    with _$SingleRecipeStateIngredientFamily {
  const factory SingleRecipeStateIngredientFamily({
    required final String id,
    required final String type,
    required final Option<String> iconPath,
    required final String name,
    required final String slug,
  }) = _SingleRecipeStateIngredientFamily;
}
