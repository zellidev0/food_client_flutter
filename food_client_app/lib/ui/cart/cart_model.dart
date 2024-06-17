import 'package:food_client/pages/common/view_state.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_model.freezed.dart';

@freezed
class CartModel with _$CartModel {
  const factory CartModel({
    required final ViewState<CartModelData> data,
  }) = _CartModel;
}

@freezed
class CartModelData with _$CartModelData {
  const factory CartModelData({
    required final List<CartModelRecipe> recipes,
    required final List<CartModelIngredient> ingredients,
    required final bool combineIngredients,
    required final CartModelSorting sorting,
    required final List<CartModelSortingUnit> sortingUnits,
  }) = _CartModelData;
}

@freezed
class CartModelSorting with _$CartModelSorting {
  const factory CartModelSorting.unit({
    required final CartModelSortingUnit active,
    required final List<String> ingredientIds,
  }) = CartModelSortingSelectedUnit;

  const factory CartModelSorting.custom({
    required final List<String> ingredientIds,
  }) = CartModelSortingCustom;
}

@freezed
class CartModelSortingUnit with _$CartModelSortingUnit {
  const factory CartModelSortingUnit({
    required final String id,
    required final String name,
    required final List<CartModelSortingIngredientFamily> ingredientFamilies,
  }) = _CartModelSortingUnit;
}

@freezed
class CartModelSortingIngredientFamily with _$CartModelSortingIngredientFamily {
  const factory CartModelSortingIngredientFamily({
    required final String name,
    required final List<String> familyIds,
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
    required final Option<CartModelIngredientFamily> family,
  }) = _CartModelIngredientInfo;
}

@freezed
class CartModelIngredientFamily with _$CartModelIngredientFamily {
  const factory CartModelIngredientFamily({
    required final String id,
    required final String type,
    required final Option<String> iconPath,
    required final String name,
    required final String slug,
  }) = _CartModelIngredientFamily;
}
