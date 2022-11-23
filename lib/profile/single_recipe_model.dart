import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_recipe_model.freezed.dart';

@freezed
class SingleRecipeModel with _$SingleRecipeModel {
  const factory SingleRecipeModel({
    required final Either<Exception,Option<SingleRecipeModelRecipe>> recipe,
    required final int selectedYield,
  }) = _SingleRecipeModel;
}

@freezed
class SingleRecipeModelRecipe with _$SingleRecipeModelRecipe {
  const factory SingleRecipeModelRecipe({
    required final String id,
    required final SingleRecipeModelDisplayedAttributes displayedAttributes,
    required final int difficulty,
    required final List<SingleRecipeModelYield> yields,
    required final List<SingleRecipeModelTag> tags,
    required final List<SingleRecipeModelStep> steps,
    required final Option<Uri> imageUriLarge,
  }) = _SingleRecipeModelRecipe;
}

@freezed
class SingleRecipeModelDisplayedAttributes
    with _$SingleRecipeModelDisplayedAttributes {
  const factory SingleRecipeModelDisplayedAttributes({
    required final String name,
    required final String headline,
    required final String description,
    required final String descriptionMarkdown,
  }) = _SingleRecipeModelDisplayedAttributes;
}

@freezed
class SingleRecipeModelStep
    with _$SingleRecipeModelStep {
  const factory SingleRecipeModelStep({
    required final String instructionMarkdown,
    required final Option<Uri> imageUrl,
  }) = _SingleRecipeModelStep;
}

@freezed
class SingleRecipeModelIngredient with _$SingleRecipeModelIngredient {
  const factory SingleRecipeModelIngredient({
    required final Option<Uri> imageUrl,
    required final String id,
    required final String slug,
    required final String displayedName,
    required final Option<double> amount,
    required final Option<String> unit,
  }) = _SingleRecipeModelIngredient;
}

@freezed
class SingleRecipeModelYield with _$SingleRecipeModelYield {
  const factory SingleRecipeModelYield({
    required final int yield,
    required final List<SingleRecipeModelIngredient> ingredients,
  }) = _SingleRecipeModelYield;
}

@freezed
class SingleRecipeModelTag with _$SingleRecipeModelTag {
  const factory SingleRecipeModelTag({
    required final String id,
    required final String slug,
    required final String displayedName,
    required final bool isSelected,
  }) = _SingleRecipeModelTag;
}