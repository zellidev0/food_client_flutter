import 'package:food_client/commons/error.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_persistence_service.freezed.dart';

abstract class CartPersistenceService {
  List<CartPersistenceServiceModelRecipe> getShoppingCardRecipes();
  List<CartPersistenceServiceModelSortingUnit> getSortingUnits();
  TaskEither<MyError, void> saveSorting({
    required final CartPersistenceServiceModelActiveSorting sorting,
  });
  Option<CartPersistenceServiceModelActiveSorting> getActiveSorting();
  TaskEither<MyError, void> updateIngredients({
    required final bool isTickedOff,
    required final String ingredientId,
    required final List<String> recipeIds,
  });
  Task<void> deleteIngredients({
    required final List<String> ingredientKeys,
    required final String recipeId,
  });
  TaskEither<MyError, void> deleteRecipe({required final String recipeId});
  TaskEither<MyError, void> deleteTicketOffIngredientsOfRecipe({
    required final String recipeId,
  });
}

@freezed
class CartPersistenceServiceModelRecipe
    with _$CartPersistenceServiceModelRecipe {
  const factory CartPersistenceServiceModelRecipe({
    required final String recipeId,
    required final String title,
    required final int serving,
    required final Option<Uri> imagePath,
    required final List<CartPersistenceServiceModelIngredient> ingredients,
  }) = _CartPersistenceServiceModelRecipe;
}

@freezed
class CartPersistenceServiceModelIngredient
    with _$CartPersistenceServiceModelIngredient {
  const factory CartPersistenceServiceModelIngredient({
    required final bool isTickedOff,
    required final Option<Uri> imageUrl,
    required final String ingredientId,
    required final String slug,
    required final String displayedName,
    required final Option<double> amount,
    required final Option<String> unit,
    required final Option<CartPersistenceServiceModelIngredientFamilyFamily>
        family,
  }) = _CartPersistenceServiceModelIngredient;
}

@freezed
class CartPersistenceServiceModelIngredientFamilyFamily
    with _$CartPersistenceServiceModelIngredientFamilyFamily {
  const factory CartPersistenceServiceModelIngredientFamilyFamily({
    required final String id,
    required final String type,
    required final Option<String> iconPath,
    required final String name,
    required final String slug,
  }) = _CartPersistenceServiceModelIngredientFamilyFamily;
}

@freezed
class CartPersistenceServiceModelSortingUnit
    with _$CartPersistenceServiceModelSortingUnit {
  const factory CartPersistenceServiceModelSortingUnit({
    required final String id,
    required final String name,
    required final List<CartPersistenceServiceModelSortingUnitFamily>
        ingredientFamilies,
  }) = _CartPersistenceServiceModelSortingUnit;
}

@freezed
class CartPersistenceServiceModelActiveSorting
    with _$CartPersistenceServiceModelActiveSorting {
  const factory CartPersistenceServiceModelActiveSorting.selectedUnit({
    required final String activeSortingUnitId,
    required final List<String> ingredientIds,
  }) = CartPersistenceServiceModelActiveSortingSelectedUnit;

  const factory CartPersistenceServiceModelActiveSorting.custom({
    required final List<String> ingredientIds,
  }) = CartPersistenceServiceModelActiveSortingCustom;
}

@freezed
class CartPersistenceServiceModelSortingUnitFamily
    with _$CartPersistenceServiceModelSortingUnitFamily {
  const factory CartPersistenceServiceModelSortingUnitFamily({
    required final List<String> familyIds,
    required final String name,
  }) = _CartPersistenceServiceModelSortingUnitFamily;
}
