import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_model.freezed.dart';

@freezed
class CartModel with _$CartModel {
  const factory CartModel({
    required final List<CartModelIngredient> ingredients,
  }) = _CartModel;
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
    required final String recipeId,
    required final Option<Uri> imageUrl,
    required final String id,
    required final String slug,
    required final String displayedName,
    required final Option<double> amount,
    required final Option<String> unit,
  }) = _CartModelIngredientInfo;
}