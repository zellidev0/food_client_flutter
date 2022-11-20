import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_parser_model.freezed.dart';

@freezed
class RecipeParserModelRecipe with _$RecipeParserModelRecipe {
  const factory RecipeParserModelRecipe({
    required final String id,
    required final RecipeParserModelDisplayedAttributes displayedAttributes,
    required final int difficulty,
    required final List<RecipeParserModelIngredient> ingredients,
    required final List<RecipeParserModelYield> yields,
    required final List<RecipeParserModelTag> tags,
    required final Option<String> imagePath,
  }) = _RecipeParserModelRecipe;
}

@freezed
class RecipeParserModelDisplayedAttributes
    with _$RecipeParserModelDisplayedAttributes {
  const factory RecipeParserModelDisplayedAttributes({
    required final String name,
    required final String headline,
    required final String description,
    required final String descriptionMarkdown,
  }) = _RecipeParserModelDisplayedAttributes;
}

@freezed
class RecipeParserModelIngredient with _$RecipeParserModelIngredient {
  const factory RecipeParserModelIngredient({
    required final String id,
    required final String slug,
    required final String displayedName,
  }) = _RecipeParserModelIngredient;
}

@freezed
class RecipeParserModelTag with _$RecipeParserModelTag {
  const factory RecipeParserModelTag({
    required final String id,
    required final String slug,
    required final String displayedName,
  }) = _RecipeParserModelTag;
}

@freezed
class RecipeParserModelYield with _$RecipeParserModelYield {
  const factory RecipeParserModelYield({
    required final int yield,
    required final List<RecipeParserModelYieldIngredient> yieldIngredient,
  }) = _RecipeParserModelYield;
}

@freezed
class RecipeParserModelYieldIngredient with _$RecipeParserModelYieldIngredient {
  const factory RecipeParserModelYieldIngredient({
    required final String id,
    required final Option<double> amount,
    required final Option<String> unit,
  }) = _RecipeParserModelYieldIngredient;
}
