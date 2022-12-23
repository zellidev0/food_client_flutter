import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredients_sorting_persistence_service.freezed.dart';

abstract class IngredientsSortingPersistenceService {
  List<IngredientsSortingPersistenceModelUnit> getUnits();
  Task<void> saveUnit({
    required final IngredientsSortingPersistenceModelUnit unit,
  });
}

@freezed
class IngredientsSortingPersistenceModelIngredientFamily
    with _$IngredientsSortingPersistenceModelIngredientFamily {
  const factory IngredientsSortingPersistenceModelIngredientFamily({
    required final String id,
    required final String type,
    required final Option<Uri> iconPath,
    required final String name,
    required final String slug,
  }) = _IngredientsSortingPersistenceModelIngredientFamily;
}

@freezed
class IngredientsSortingPersistenceModelUnit
    with _$IngredientsSortingPersistenceModelUnit {
  const factory IngredientsSortingPersistenceModelUnit({
    required final String id,
    required final String name,
    required final List<IngredientsSortingPersistenceModelIngredientFamily>
        families,
  }) = _IngredientsSortingPersistenceModelUnit;
}
