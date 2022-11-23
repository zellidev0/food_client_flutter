import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_model.freezed.dart';

@freezed
class HomeModel with _$HomeModel {
  const factory HomeModel({
    required final List<HomeModelRecipe> recipes,
    required final List<HomeModelTag> tags,
  }) = _HomeModel;
}

@freezed
class HomeModelRecipe with _$HomeModelRecipe {
  const factory HomeModelRecipe({
    required final String id,
    required final HomeModelDisplayedAttributes displayedAttributes,
    required final int difficulty,
    required final List<HomeModelIngredient> ingredients,
    required final List<HomeModelYield> yields,
    required final List<String> tagIds,
    required final Uri imageUriLarge,
  }) = _HomeModelRecipe;
}

@freezed
class HomeModelDisplayedAttributes with _$HomeModelDisplayedAttributes {
  const factory HomeModelDisplayedAttributes({
    required final String name,
    required final String headline,
    required final String description,
    required final Option<String> descriptionMarkdown,
  }) = _HomeModelDisplayedAttributes;
}

@freezed
class HomeModelIngredient with _$HomeModelIngredient {
  const factory HomeModelIngredient({
    required final String id,
    required final String slug,
    required final String displayedName,
  }) = _HomeModelIngredient;
}

@freezed
class HomeModelTag with _$HomeModelTag {
  const factory HomeModelTag({
    required final String id,
    required final String slug,
    required final String displayedName,
    required final bool isSelected,
  }) = _HomeModelTag;
}

@freezed
class HomeModelYield with _$HomeModelYield {
  const factory HomeModelYield({
    required final int yield,
    required final List<HomeModelYieldIngredient> yieldIngredient,
  }) = _HomeModelYield;
}

@freezed
class HomeModelYieldIngredient with _$HomeModelYieldIngredient {
  const factory HomeModelYieldIngredient({
    required final String id,
    required final Option<double> amount,
    required final Option<String> unit,
  }) = _HomeModelYieldIngredient;
}
