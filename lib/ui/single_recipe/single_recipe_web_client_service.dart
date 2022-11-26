import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_recipe_web_client_service.freezed.dart';

abstract class SingleRecipeWebClientService {
  TaskEither<Exception, SingleRecipeWebClientModelRecipe> fetchSingleRecipe({
    required final String recipeId,
  });
}

@freezed
class SingleRecipeWebClientModelRecipe
    with _$SingleRecipeWebClientModelRecipe {
  const factory SingleRecipeWebClientModelRecipe({
    required final String id,
    required final SingleRecipeWebClientModelDisplayedAttributes
    displayedAttributes,
    required final int difficulty,
    required final List<SingleRecipeWebClientModelYield> yields,
    required final List<SingleRecipeWebClientModelTag> tags,
    required final List<SingleRecipeWebClientModelStep> steps,
    required final Option<Uri> imagePath,
  }) = _SingleRecipeWebClientModelRecipe;
}

@freezed
class SingleRecipeWebClientModelDisplayedAttributes
    with _$SingleRecipeWebClientModelDisplayedAttributes {
  const factory SingleRecipeWebClientModelDisplayedAttributes({
    required final String name,
    required final String headline,
    required final String description,
    required final Option<String> descriptionMarkdown,
  }) = _SingleRecipeWebClientModelDisplayedAttributes;
}

@freezed
class SingleRecipeWebClientModelStep
    with _$SingleRecipeWebClientModelStep {
  const factory SingleRecipeWebClientModelStep({
    required final String instructionMarkdown,
    required final Option<Uri> imagePath,
  }) = _SingleRecipeWebClientModelStep;
}

@freezed
class SingleRecipeWebClientModelIngredient
    with _$SingleRecipeWebClientModelIngredient {
  const factory SingleRecipeWebClientModelIngredient({
    required final Option<Uri> imagePath,
    required final String id,
    required final String slug,
    required final String displayedName,
    required final Option<double> amount,
    required final Option<String> unit,
  }) = _SingleRecipeWebClientModelIngredient;
}

@freezed
class SingleRecipeWebClientModelYield
    with _$SingleRecipeWebClientModelYield {
  const factory SingleRecipeWebClientModelYield({
    required final Option<int> yields,
    required final List<SingleRecipeWebClientModelIngredient> ingredients,
  }) = _SingleRecipeWebClientModelYield;
}

@freezed
class SingleRecipeWebClientModelTag with _$SingleRecipeWebClientModelTag {
  const factory SingleRecipeWebClientModelTag({
    required final String id,
    required final String slug,
    required final String displayedName,
  }) = _SingleRecipeWebClientModelTag;
}
