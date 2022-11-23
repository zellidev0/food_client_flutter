import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_recipe_parser.freezed.dart';

abstract class HomeRecipeParserService {
  Either<Exception, List<HomeRecipeParserModelRecipe>> parseRecipes({
    required final Map<String, dynamic> payload,
  });
}

@freezed
class HomeRecipeParserModelRecipe with _$HomeRecipeParserModelRecipe {
  const factory HomeRecipeParserModelRecipe({
    required final String id,
    required final HomeRecipeParserModelDisplayedAttributes displayedAttributes,
    required final int difficulty,
    required final List<HomeRecipeParserModelIngredient> ingredients,
    required final List<HomeRecipeParserModelYield> yields,
    required final List<HomeRecipeParserModelTag> tags,
    required final Option<Uri> imagePath,
  }) = _HomeRecipeParserModelRecipe;
}

@freezed
class HomeRecipeParserModelDisplayedAttributes
    with _$HomeRecipeParserModelDisplayedAttributes {
  const factory HomeRecipeParserModelDisplayedAttributes({
    required final String name,
    required final String headline,
    required final String description,
    required final String descriptionMarkdown,
  }) = _HomeRecipeParserModelDisplayedAttributes;
}

@freezed
class HomeRecipeParserModelIngredient with _$HomeRecipeParserModelIngredient {
  const factory HomeRecipeParserModelIngredient({
    required final String id,
    required final String slug,
    required final String displayedName,
  }) = _HomeRecipeParserModelIngredient;
}

@freezed
class HomeRecipeParserModelTag with _$HomeRecipeParserModelTag {
  const factory HomeRecipeParserModelTag({
    required final String id,
    required final String slug,
    required final String displayedName,
  }) = _HomeRecipeParserModelTag;
}

@freezed
class HomeRecipeParserModelYield with _$HomeRecipeParserModelYield {
  const factory HomeRecipeParserModelYield({
    required final int yield,
    required final List<HomeRecipeParserModelYieldIngredient> yieldIngredient,
  }) = _HomeRecipeParserModelYield;
}

@freezed
class HomeRecipeParserModelYieldIngredient with _$HomeRecipeParserModelYieldIngredient {
  const factory HomeRecipeParserModelYieldIngredient({
    required final String id,
    required final Option<double> amount,
    required final Option<String> unit,
  }) = _HomeRecipeParserModelYieldIngredient;
}
