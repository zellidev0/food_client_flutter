import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredients_sorting_model.freezed.dart';

@freezed
class IngredientsSortingModel with _$IngredientsSortingModel {
  const factory IngredientsSortingModel({
    required final List<IngredientsSortingModelUnit> units,
    required final Option<String> currentlyEditingUnitName,
  }) = _IngredientsSortingModel;
}

@freezed
class IngredientsSortingModelUnit with _$IngredientsSortingModelUnit {
  const factory IngredientsSortingModelUnit({
    required final String id,
    required final String title,
    required final bool selected,
    required final List<IngredientsSortingModelIngredientFamily> ingredientFamilies,
  }) = _IngredientsSortingModelUnit;
}

@freezed
class IngredientsSortingModelIngredientFamily with _$IngredientsSortingModelIngredientFamily {
  const factory IngredientsSortingModelIngredientFamily({
    required final String type,
    required final Option<Uri> iconUrl,
    required final String name,
    required final String slug,
    required final List<String> familyIds,
  }) = _IngredientsSortingModelIngredientFamily;
}
