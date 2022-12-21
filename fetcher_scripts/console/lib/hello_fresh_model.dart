import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hello_fresh_model.freezed.dart';
part 'hello_fresh_model.g.dart';

@freezed
class HelloFreshModelRecipeApiRecipeResponse
    with _$HelloFreshModelRecipeApiRecipeResponse {
  const factory HelloFreshModelRecipeApiRecipeResponse({
    required final int total,
    required final int take,
    required final int count,
    required final int skip,
    required final List<HelloFreshModelRecipe> items,
  }) = _HelloFreshModelRecipeApiRecipeResponse;

  factory HelloFreshModelRecipeApiRecipeResponse.fromJson(
    final Map<String, dynamic> json,
  ) =>
      _$HelloFreshModelRecipeApiRecipeResponseFromJson(json);
}

@freezed
class HelloFreshModelRecipeApiTagResponse
    with _$HelloFreshModelRecipeApiTagResponse {
  const factory HelloFreshModelRecipeApiTagResponse({
    required final int total,
    required final int take,
    required final int count,
    required final int skip,
    required final List<HelloFreshModelTag> items,
  }) = _HelloFreshModelRecipeApiTagResponse;

  factory HelloFreshModelRecipeApiTagResponse.fromJson(
    final Map<String, dynamic> json,
  ) =>
      _$HelloFreshModelRecipeApiTagResponseFromJson(json);
}

@freezed
class HelloFreshModelRecipeApiCuisineResponse
    with _$HelloFreshModelRecipeApiCuisineResponse {
  const factory HelloFreshModelRecipeApiCuisineResponse({
    required final int total,
    required final int take,
    required final int count,
    required final int skip,
    required final List<HelloFreshModelCuisine> items,
  }) = _HelloFreshModelRecipeApiCuisineResponse;

  factory HelloFreshModelRecipeApiCuisineResponse.fromJson(
    final Map<String, dynamic> json,
  ) =>
      _$HelloFreshModelRecipeApiCuisineResponseFromJson(json);
}

@freezed
class HelloFreshModelRecipeApiIngredientsResponse
    with _$HelloFreshModelRecipeApiIngredientsResponse {
  const factory HelloFreshModelRecipeApiIngredientsResponse({
    required final int total,
    required final int take,
    required final int count,
    required final int skip,
    required final List<HelloFreshModelIngredient> items,
  }) = _HelloFreshModelRecipeApiIngredientsResponse;

  factory HelloFreshModelRecipeApiIngredientsResponse.fromJson(
      final Map<String, dynamic> json,
      ) =>
      _$HelloFreshModelRecipeApiIngredientsResponseFromJson(json);
}

@freezed
class HelloFreshModelTagsApiResponse with _$HelloFreshModelTagsApiResponse {
  const factory HelloFreshModelTagsApiResponse({
    required final int total,
    required final int take,
    required final int count,
    required final int skip,
    required final List<HelloFreshModelTag> items,
  }) = _HelloFreshModelTagsApiResponse;

  factory HelloFreshModelTagsApiResponse.fromJson(
    final Map<String, dynamic> json,
  ) =>
      _$HelloFreshModelTagsApiResponseFromJson(json);
}

@freezed
class HelloFreshModelRecipe with _$HelloFreshModelRecipe {
  const factory HelloFreshModelRecipe({
    required final String id,
    required final String name,
    required final String slug,
    required final String country,
    required final String headline,
    required final String description,
    required final Option<String> descriptionMarkdown,
    required final int difficulty,
    required final Option<String> prepTime,
    required final Option<String> totalTime,
    required final Option<String> imagePath,
    required final List<HelloFreshModelIngredient> ingredients,
    required final List<HelloFreshModelYield> yields,
    required final List<HelloFreshModelRecipeTag> tags,
    required final List<HelloFreshModelStep> steps,
    required final List<HelloFreshModelCuisine> cuisines,
  }) = _HelloFreshModelRecipe;

  factory HelloFreshModelRecipe.fromJson(
    final Map<String, dynamic> json,
  ) =>
      _$HelloFreshModelRecipeFromJson(json);
}

@freezed
class HelloFreshModelIngredient with _$HelloFreshModelIngredient {
  const factory HelloFreshModelIngredient({
    required final String id,
    required final String country,
    required final String slug,
    required final String name,
    required final String type,
    required final Option<String> imagePath,
    required final HelloFreshModelIngredientFamily? family,
  }) = _HelloFreshModelIngredient;

  factory HelloFreshModelIngredient.fromJson(
    final Map<String, dynamic> json,
  ) =>
      _$HelloFreshModelIngredientFromJson(json);
}

@freezed
class HelloFreshModelRecipeTag with _$HelloFreshModelRecipeTag {
  const factory HelloFreshModelRecipeTag({
    required final String id,
    required final String slug,
    required final String type,
    required final String name,
    required final Map<String, int> numberOfRecipesByCountry,
  }) = _HelloFreshModelRecipeTag;

  factory HelloFreshModelRecipeTag.fromJson(
    final Map<String, dynamic> json,
  ) =>
      _$HelloFreshModelRecipeTagFromJson(json);
}

@freezed
class HelloFreshModelCuisine with _$HelloFreshModelCuisine {
  const factory HelloFreshModelCuisine({
    required final String id,
    required final String slug,
    required final String type,
    required final String name,
    required final int usage,
    required final Option<String> iconPath,
  }) = _HelloFreshModelCuisine;

  factory HelloFreshModelCuisine.fromJson(
    final Map<String, dynamic> json,
  ) =>
      _$HelloFreshModelCuisineFromJson(json);
}

@freezed
class HelloFreshModelYield with _$HelloFreshModelYield {
  const factory HelloFreshModelYield({
    required final Option<int> yields,
    required final List<HelloFreshModelYieldIngredient> ingredients,
  }) = _HelloFreshModelYield;

  factory HelloFreshModelYield.fromJson(
    final Map<String, dynamic> json,
  ) =>
      _$HelloFreshModelYieldFromJson(json);
}

@freezed
class HelloFreshModelStep with _$HelloFreshModelStep {
  const factory HelloFreshModelStep({
    required final int index,
    required final String instructionsMarkdown,
    required final List<String> ingredients,
    required final List<HelloFreshModelStepImage> images,
  }) = _HelloFreshModelStep;

  factory HelloFreshModelStep.fromJson(
    final Map<String, dynamic> json,
  ) =>
      _$HelloFreshModelStepFromJson(json);
}

@freezed
class HelloFreshModelStepImage with _$HelloFreshModelStepImage {
  const factory HelloFreshModelStepImage({
    required final String path,
    required final String caption,
  }) = _HelloFreshModelStepImage;

  factory HelloFreshModelStepImage.fromJson(
    final Map<String, dynamic> json,
  ) =>
      _$HelloFreshModelStepImageFromJson(json);
}

@freezed
class HelloFreshModelYieldIngredient with _$HelloFreshModelYieldIngredient {
  const factory HelloFreshModelYieldIngredient({
    required final String id,
    required final Option<num> amount,
    required final Option<String> unit,
  }) = _HelloFreshModelYieldIngredient;

  factory HelloFreshModelYieldIngredient.fromJson(
    final Map<String, dynamic> json,
  ) =>
      _$HelloFreshModelYieldIngredientFromJson(json);
}

@freezed
class HelloFreshModelTag with _$HelloFreshModelTag {
  const factory HelloFreshModelTag({
    required final String id,
    required final String name,
    required final String type,
    required final Map<String, int> numberOfRecipesByCountry,
  }) = _HelloFreshModelTag;

  factory HelloFreshModelTag.fromJson(
    final Map<String, dynamic> json,
  ) =>
      _$HelloFreshModelTagFromJson(json);
}

@freezed
class HelloFreshModelIngredientFamily with _$HelloFreshModelIngredientFamily {
  const factory HelloFreshModelIngredientFamily({
    required final String id,
    required final String type,
    required final Option<String> iconPath,
    required final String name,
    required final String slug,
  }) = _HelloFreshModelIngredientFamily;

  factory HelloFreshModelIngredientFamily.fromJson(
    final Map<String, dynamic> json,
  ) =>
      _$HelloFreshModelIngredientFamilyFromJson(json);
}
