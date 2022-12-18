import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_model.freezed.dart';

@freezed
class CartModel with _$CartModel {
  const factory CartModel({
    required final List<CartModelRecipe> recipes,
    required final List<CartModelIngredient> ingredients,
    required final bool combineIngredients,
    required final CartModelSorting sorting,
  }) = _CartModel;
}

@freezed
class CartModelSorting with _$CartModelSorting {
  const factory CartModelSorting({
    required final List<CartModelSortingUnit> units,
  }) = _CartModelSorting;
}

@freezed
class CartModelSortingUnit with _$CartModelSortingUnit {
  const factory CartModelSortingUnit({
    required final String id,
    required final String name,
    required final bool isActive,
    required final List<CartModelSortingIngredientFamily> ingredientFamilies,
  }) = _CartModelSortingUnit;
}

@freezed
class CartModelSortingIngredientFamily with _$CartModelSortingIngredientFamily {
  const factory CartModelSortingIngredientFamily({
    required final String name,
    required final String familyId,
  }) = _CartModelSortingIngredientFamily;
}

@freezed
class CartModelRecipe with _$CartModelRecipe {
  const factory CartModelRecipe({
    required final String title,
    required final String recipeId,
    required final int serving,
    required final Option<Uri> imageUrl,
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
    required final List<String> recipeIds,
  }) = _CartModelIngredientInfo;
}
