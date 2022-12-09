import 'dart:ui';

import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_model.freezed.dart';

@freezed
class CartModel with _$CartModel {
  const factory CartModel({
    required final List<CartModelRecipe> recipes,
  }) = _CartModel;
}

@freezed
class CartModelRecipe with _$CartModelRecipe {
  const factory CartModelRecipe({
    required final List<CartModelIngredient> ingredients,
    required final String title,
    required final String recipeId,
    required final Option<Uri> imageUrl,
    required final Color color,
  }) = _CartModelRecipe;
}
@freezed
class CartModelIngredient with _$CartModelIngredient {
  const factory CartModelIngredient({
    required final CartModelIngredientInfo ingredient,
    required final bool isTickedOff,
  }) = _CartModelIngredient;
}

@freezed
class CartModelIngredientInfo with _$CartModelIngredientInfo {
  const factory CartModelIngredientInfo({
    required final Option<Uri> imageUrl,
    required final String ingredientId,
    required final String slug,
    required final String displayedName,
    required final Option<double> amount,
    required final Option<String> unit,
  }) = _CartModelIngredientInfo;
}
