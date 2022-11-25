import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'web_client_model.freezed.dart';
part 'web_client_model.g.dart';

@freezed
class WebClientModelRecipeApiRecipeResponse with _$WebClientModelRecipeApiRecipeResponse {
  const factory WebClientModelRecipeApiRecipeResponse({
    required final int total,
    required final int take,
    required final int count,
    required final int skip,
    required final List<WebClientModelRecipe> items,
  }) = _WebClientModelRecipeApiRecipeResponse;

  factory WebClientModelRecipeApiRecipeResponse.fromJson(
    final Map<String, dynamic> json,
  ) =>
      _$WebClientModelRecipeApiRecipeResponseFromJson(json);
}

@freezed
class WebClientModelRecipeApiTagResponse with _$WebClientModelRecipeApiTagResponse {
  const factory WebClientModelRecipeApiTagResponse({
    required final int total,
    required final int take,
    required final int count,
    required final int skip,
    required final List<WebClientModelTag> items,
  }) = _WebClientModelRecipeApiTagResponse;

  factory WebClientModelRecipeApiTagResponse.fromJson(
      final Map<String, dynamic> json,
      ) =>
      _$WebClientModelRecipeApiTagResponseFromJson(json);
}

@freezed
class WebClientModelRecipeApiCuisineResponse with _$WebClientModelRecipeApiCuisineResponse {
  const factory WebClientModelRecipeApiCuisineResponse({
    required final int total,
    required final int take,
    required final int count,
    required final int skip,
    required final List<WebClientModelCuisine> items,
  }) = _WebClientModelRecipeApiCuisineResponse;

  factory WebClientModelRecipeApiCuisineResponse.fromJson(
      final Map<String, dynamic> json,
      ) =>
      _$WebClientModelRecipeApiCuisineResponseFromJson(json);
}



@freezed
class WebClientModelTagsApiResponse with _$WebClientModelTagsApiResponse {
  const factory WebClientModelTagsApiResponse({
    required final int total,
    required final int take,
    required final int count,
    required final int skip,
    required final List<WebClientModelTag> items,
  }) = _WebClientModelTagsApiResponse;

  factory WebClientModelTagsApiResponse.fromJson(
    final Map<String, dynamic> json,
  ) =>
      _$WebClientModelTagsApiResponseFromJson(json);
}

@freezed
class WebClientModelRecipe with _$WebClientModelRecipe {
  const factory WebClientModelRecipe({
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
    required final List<WebClientModelIngredient> ingredients,
    required final List<WebClientModelYield> yields,
    required final List<WebClientModelRecipeTag> tags,
    required final List<WebClientModelStep> steps,
    required final List<WebClientModelCuisine> cuisines,
  }) = _WebClientModelRecipe;

  factory WebClientModelRecipe.fromJson(
    final Map<String, dynamic> json,
  ) =>
      _$WebClientModelRecipeFromJson(json);
}

@freezed
class WebClientModelIngredient with _$WebClientModelIngredient {
  const factory WebClientModelIngredient({
    required final String id,
    required final String country,
    required final String slug,
    required final String name,
    required final String type,
    required final Option<String> imagePath,
  }) = _WebClientModelIngredient;

  factory WebClientModelIngredient.fromJson(
    final Map<String, dynamic> json,
  ) =>
      _$WebClientModelIngredientFromJson(json);
}

@freezed
class WebClientModelRecipeTag with _$WebClientModelRecipeTag {
  const factory WebClientModelRecipeTag({
    required final String id,
    required final String slug,
    required final String type,
    required final String name,
    required final List<String> preferences,
    required final Map<String,int> numberOfRecipesByCountry,
  }) = _WebClientModelRecipeTag;

  factory WebClientModelRecipeTag.fromJson(
    final Map<String, dynamic> json,
  ) =>
      _$WebClientModelRecipeTagFromJson(json);
}

@freezed
class WebClientModelCuisine with _$WebClientModelCuisine {
  const factory WebClientModelCuisine({
    required final String id,
    required final String slug,
    required final String type,
    required final String name,
    required final int usage,
    required final Option<String> iconPath,
  }) = _WebClientModelCuisine;

  factory WebClientModelCuisine.fromJson(
    final Map<String, dynamic> json,
  ) =>
      _$WebClientModelCuisineFromJson(json);
}

@freezed
class WebClientModelYield with _$WebClientModelYield {
  const factory WebClientModelYield({
    required final Option<int> yield,
    required final List<WebClientModelYieldIngredient> ingredients,
  }) = _WebClientModelYield;

  factory WebClientModelYield.fromJson(
    final Map<String, dynamic> json,
  ) =>
      _$WebClientModelYieldFromJson(json);
}

@freezed
class WebClientModelStep with _$WebClientModelStep {
  const factory WebClientModelStep({
    required final int index,
    required final String instructionsMarkdown,
    required final List<String> ingredients,
    // required final Option<List<WebClientModelStepImage>> images,
  }) = _WebClientModelStep;

  factory WebClientModelStep.fromJson(
    final Map<String, dynamic> json,
  ) =>
      _$WebClientModelStepFromJson(json);
}

@freezed
class WebClientModelStepImage with _$WebClientModelStepImage {
  const factory WebClientModelStepImage({
    required final String path,
    required final String caption,
  }) = _WebClientModelStepImage;

  factory WebClientModelStepImage.fromJson(
    final Map<String, dynamic> json,
  ) =>
      _$WebClientModelStepImageFromJson(json);
}

@freezed
class WebClientModelYieldIngredient with _$WebClientModelYieldIngredient {
  const factory WebClientModelYieldIngredient({
    required final String id,
    required final Option<num> amount,
    required final Option<String> unit,
  }) = _WebClientModelYieldIngredient;

  factory WebClientModelYieldIngredient.fromJson(
    final Map<String, dynamic> json,
  ) =>
      _$WebClientModelYieldIngredientFromJson(json);
}

@freezed
class WebClientModelTag with _$WebClientModelTag {
  const factory WebClientModelTag({
    required final String id,
    required final String name,
    required final String slug,
    required final Map<String,int> numberOfRecipesByCountry,
  }) = _WebClientModelTag;

  factory WebClientModelTag.fromJson(
    final Map<String, dynamic> json,
  ) =>
      _$WebClientModelTagFromJson(json);
}
