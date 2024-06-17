import 'package:food_client/pages/common/view_state.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredients_sorting_state.freezed.dart';

@freezed
class IngredientsSortingState with _$IngredientsSortingState {
  const factory IngredientsSortingState({
    required final ViewState<List<IngredientsSortingModelUnit>> units,
  }) = _IngredientsSortingState;
}

@freezed
class IngredientsSortingModelUnit with _$IngredientsSortingModelUnit {
  const factory IngredientsSortingModelUnit({
    required final String id,
    required final String title,
    required final bool selected,
    required final List<IngredientsSortingModelSorting> sorting,
  }) = _IngredientsSortingModelUnit;
}

@freezed
class IngredientsSortingModelSorting with _$IngredientsSortingModelSorting {
  const factory IngredientsSortingModelSorting({
    required final String id,
    required final String type,
    required final Option<Uri> iconUrl,
    required final Option<Uri> iconPath,
    required final String name,
    required final List<IngredientsSortingModelIngredientFamily>
        ingredientFamilies,
  }) = _IngredientsSortingModelSorting;
}

@freezed
class IngredientsSortingModelIngredientFamily
    with _$IngredientsSortingModelIngredientFamily {
  const factory IngredientsSortingModelIngredientFamily.helloFresh({
    required final String helloFreshFamilyId,
  }) = IngredientsSortingModelIngredientFamilyHelloFresh;
}
