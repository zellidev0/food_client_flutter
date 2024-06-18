import 'package:food_client/pages/common/view_state.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredients_sorting_state.freezed.dart';

@freezed
class IngredientsSortingState with _$IngredientsSortingState {
  const factory IngredientsSortingState({
    required final ViewState<List<IngredientsSortingStateUnit>> units,
  }) = _IngredientsSortingState;
}

@freezed
class IngredientsSortingStateUnit with _$IngredientsSortingStateUnit {
  const factory IngredientsSortingStateUnit({
    required final String id,
    required final String title,
    required final bool selected,
    required final List<IngredientsSortingStateSorting> sorting,
  }) = _IngredientsSortingStateUnit;
}

@freezed
class IngredientsSortingStateSorting with _$IngredientsSortingStateSorting {
  const factory IngredientsSortingStateSorting({
    required final String id,
    required final String type,
    required final Option<Uri> iconUrl,
    required final Option<Uri> iconPath,
    required final String name,
    required final List<IngredientsSortingStateIngredientFamily>
        ingredientFamilies,
  }) = _IngredientsSortingStateSorting;
}

@freezed
class IngredientsSortingStateIngredientFamily
    with _$IngredientsSortingStateIngredientFamily {
  const factory IngredientsSortingStateIngredientFamily.helloFresh({
    required final String helloFreshFamilyId,
  }) = IngredientsSortingStateIngredientFamilyHelloFresh;
}
