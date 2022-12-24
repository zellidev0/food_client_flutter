import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredients_sorting_persistence_service.freezed.dart';

abstract class IngredientsSortingPersistenceService {
  List<IngredientsSortingPersistenceModelUnit> getUnits();
  TaskEither<Exception, void> deleteUnit({required final String unitId});
  Task<void> saveUnit({
    required final IngredientsSortingPersistenceModelUnit unit,
  });
}

@freezed
class IngredientsSortingPersistenceModelIngredientFamily
    with _$IngredientsSortingPersistenceModelIngredientFamily {
  const factory IngredientsSortingPersistenceModelIngredientFamily({
    required final List<String> familyIds,
    required final String type,
    required final Option<Uri> iconUrl,
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
    ingredientFamilies,
  }) = _IngredientsSortingPersistenceModelUnit;
}
