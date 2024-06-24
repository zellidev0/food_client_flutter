import 'package:food_client/pages/common/error.dart';
import 'package:food_client/services/persistence_service/general_persisnence_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredients_sorting_persistence_service.freezed.dart';

abstract class IngredientsSortingPersistenceService
    extends GeneralPersistenceService {
  List<IngredientsSortingPersistenceModelUnit> getUnits();
  TaskEither<Exception, void> deleteUnit({required final String unitId});
  TaskEither<MyError, void> saveUnit({
    required final IngredientsSortingPersistenceModelUnit unit,
  });
}

@freezed
class IngredientsSortingPersistenceModelUnit
    with _$IngredientsSortingPersistenceModelUnit {
  const factory IngredientsSortingPersistenceModelUnit({
    required final String id,
    required final String name,
    required final List<IngredientsSortingPersistenceModelSorting> sortings,
  }) = _IngredientsSortingPersistenceModelUnit;
}

@freezed
class IngredientsSortingPersistenceModelSorting
    with _$IngredientsSortingPersistenceModelSorting {
  const factory IngredientsSortingPersistenceModelSorting({
    required final String type,
    required final Option<Uri> iconPath,
    required final String name,
    required final List<IngredientsSortingPersistenceModelIngredientFamily>
        ingredientFamilies,
  }) = _IngredientsSortingPersistenceModelSorting;
}

@freezed
class IngredientsSortingPersistenceModelIngredientFamily
    with _$IngredientsSortingPersistenceModelIngredientFamily {
  const factory IngredientsSortingPersistenceModelIngredientFamily.helloFresh({
    required final String helloFreshFamilyId,
  }) = IngredientsSortingPersistenceModelIngredientFamilyHelloFresh;
}
