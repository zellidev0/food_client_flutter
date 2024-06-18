import 'package:food_client/pages/common/view_state.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_state.freezed.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    required final ViewState<CartStateData> data,
  }) = _CartState;
}

@freezed
class CartStateData with _$CartStateData {
  const factory CartStateData({
    required final List<CartStateRecipe> recipes,
    required final List<CartStateIngredient> ingredients,
    required final bool combineIngredients,
    required final CartStateSorting sorting,
    required final List<CartStateSortingUnit> sortingUnits,
  }) = _CartStateData;
}

@freezed
class CartStateSorting with _$CartStateSorting {
  const factory CartStateSorting.unit({
    required final CartStateSortingUnit active,
    required final List<String> ingredientIds,
  }) = CartStateSortingSelectedUnit;

  const factory CartStateSorting.custom({
    required final List<String> ingredientIds,
  }) = CartStateSortingCustom;
}

@freezed
class CartStateSortingUnit with _$CartStateSortingUnit {
  const factory CartStateSortingUnit({
    required final String id,
    required final String name,
    required final List<CartStateSortingIngredientFamily> ingredientFamilies,
  }) = _CartStateSortingUnit;
}

@freezed
class CartStateSortingIngredientFamily with _$CartStateSortingIngredientFamily {
  const factory CartStateSortingIngredientFamily({
    required final String name,
    required final List<String> familyIds,
  }) = _CartStateSortingIngredientFamily;
}

@freezed
class CartStateRecipe with _$CartStateRecipe {
  const factory CartStateRecipe({
    required final String title,
    required final String recipeId,
    required final int serving,
    required final Option<Uri> imageUrl,
  }) = _CartStateRecipe;
}

@freezed
class CartStateIngredient with _$CartStateIngredient {
  const factory CartStateIngredient({
    required final CartStateIngredientInfo ingredient,
    required final bool isTickedOff,
  }) = _CartStateIngredient;
}

@freezed
class CartStateIngredientInfo with _$CartStateIngredientInfo {
  const factory CartStateIngredientInfo({
    required final Option<Uri> imageUrl,
    required final String ingredientId,
    required final String slug,
    required final String displayedName,
    required final Option<double> amount,
    required final Option<String> unit,
    required final List<String> recipeIds,
    required final Option<CartStateIngredientFamily> family,
  }) = _CartStateIngredientInfo;
}

@freezed
class CartStateIngredientFamily with _$CartStateIngredientFamily {
  const factory CartStateIngredientFamily({
    required final String id,
    required final String type,
    required final Option<String> iconPath,
    required final String name,
    required final String slug,
  }) = _CartStateIngredientFamily;
}
