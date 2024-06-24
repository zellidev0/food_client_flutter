import 'package:food_client/pages/common/error.dart';
import 'package:food_client/pages/features/cart/services/cart_persistence_service.dart';
import 'package:food_client/services/persistence_service/persistence_service.dart';
import 'package:food_client/services/persistence_service/persistence_service_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hive/hive.dart';

mixin CartPersistenceServiceMixin implements CartPersistenceService {
  late Box<PersistenceServiceModelSortingUnit> sortingUnits;
  late Box<PersistenceServiceModelActiveSorting> activeShoppingListSortingBox;
  late Box<PersistenceServiceModelShoppingListRecipe> shoppingListBox;
  @override
  List<CartPersistenceServiceModelRecipe> getShoppingCardRecipes() =>
      _readAllShoppingCardIngredientsAndSetState()
          .map(mapToCartPersistenceServiceModelRecipe)
          .toList();

  List<PersistenceServiceModelShoppingListRecipe>
      _readAllShoppingCardIngredientsAndSetState() =>
          shoppingListBox.values.toList();

  @override
  List<CartPersistenceServiceModelSortingUnit> getSortingUnits() => sortingUnits
      .values
      .map(
        (final PersistenceServiceModelSortingUnit unit) =>
            CartPersistenceServiceModelSortingUnit(
          id: unit.id,
          name: unit.name,
          ingredientFamilies: unit.sorting
              .map(
                (
                  final PersistenceServiceModelSorting sorting,
                ) =>
                    CartPersistenceServiceModelSortingUnitFamily(
                  familyIds: sorting.ingredientFamilies
                      .map(
                        (
                          final PersistenceServiceModelIngredientFamily family,
                        ) =>
                            family.helloFreshFamilyId,
                      )
                      .toList(),
                  name: sorting.name,
                ),
              )
              .toList(),
        ),
      )
      .toList();

  @override
  TaskEither<MyError, void> saveSorting({
    required final CartPersistenceServiceModelActiveSorting sorting,
  }) =>
      TaskEither<MyError, void>.tryCatch(
        () async => await activeShoppingListSortingBox.put(
          activeShoppingListSortingKey,
          sorting.map(
            selectedUnit: (
              final CartPersistenceServiceModelActiveSortingSelectedUnit
                  selectedUnit,
            ) =>
                PersistenceServiceModelActiveSorting.unit(
              activeSortingUnitId: selectedUnit.activeSortingUnitId,
              customSortingIngredientIds: selectedUnit.ingredientIds,
            ),
            custom:
                (final CartPersistenceServiceModelActiveSortingCustom custom) =>
                    PersistenceServiceModelActiveSorting.custom(
              customSortingIngredientIds: custom.ingredientIds,
            ),
          ),
        ),
        MyError.fromErrorAndStackTrace,
      );

  @override
  Option<CartPersistenceServiceModelActiveSorting> getActiveSorting() =>
      optionOf(
        activeShoppingListSortingBox.get(
          activeShoppingListSortingKey,
        ),
      ).map(
        (final PersistenceServiceModelActiveSorting activeSorting) =>
            activeSorting.map(
          unit: (final PersistenceServiceModelActiveSortingUnit unit) =>
              CartPersistenceServiceModelActiveSorting.selectedUnit(
            activeSortingUnitId: unit.activeSortingUnitId,
            ingredientIds: unit.customSortingIngredientIds,
          ),
          custom: (final PersistenceServiceModelActiveSortingCustom custom) =>
              CartPersistenceServiceModelActiveSorting.custom(
            ingredientIds: custom.customSortingIngredientIds,
          ),
        ),
      );

  @override
  TaskEither<MyError, void> updateIngredients({
    required final bool isTickedOff,
    required final String ingredientId,
    required final List<String> recipeIds,
  }) =>
      recipeIds.traverseTaskEither(
        (String id) => optionOf(shoppingListBox.get(id))
            .map(
              (final PersistenceServiceModelShoppingListRecipe recipe) =>
                  recipe.copyWith(
                ingredients: recipe.ingredients
                    .map(
                      (
                        final PersistenceServiceModelShoppingListIngredient ing,
                      ) =>
                          ing.ingredientId == ingredientId
                              ? ing.copyWith(isTickedOff: isTickedOff)
                              : ing,
                    )
                    .toList(),
              ),
            )
            .toEither<MyError>(
              () => MyError(
                message:
                    'Shopping list box does not contain recipe with id $recipeIds',
              ),
            )
            .toTaskEither()
            .flatMap(
              (final PersistenceServiceModelShoppingListRecipe recipe) =>
                  TaskEither<MyError, void>.tryCatch(
                () async => await shoppingListBox.put(recipe.recipeId, recipe),
                (Object error, StackTrace stackTrace) => MyError(
                  stackTrace: stackTrace,
                  originalError: error,
                  message: 'message',
                ),
              ),
            ),
      );

  @override
  Task<void> deleteIngredients({
    required final List<String> ingredientKeys,
    required final String recipeId,
  }) =>
      optionOf(shoppingListBox.get(recipeId))
          .map(
            (final PersistenceServiceModelShoppingListRecipe recipe) =>
                recipe.copyWith(
              ingredients: recipe.ingredients
                  .filter(
                    (
                      final PersistenceServiceModelShoppingListIngredient
                          ingredient,
                    ) =>
                        !ingredientKeys.contains(ingredient.ingredientId),
                  )
                  .toList(),
            ),
          )
          .fold(
            () => Task<void>(() async {}),
            (final PersistenceServiceModelShoppingListRecipe recipe) =>
                Task<void>(
              () async => await shoppingListBox.put(recipeId, recipe),
            ),
          );

  @override
  TaskEither<MyError, void> deleteRecipe({required final String recipeId}) =>
      TaskEither<MyError, void>.tryCatch(
        () async => await shoppingListBox.delete(recipeId),
        MyError.fromErrorAndStackTrace,
      );

  @override
  TaskEither<MyError, void> deleteTicketOffIngredientsOfRecipe({
    required final String recipeId,
  }) =>
      optionOf(shoppingListBox.get(recipeId))
          .map(
            (final PersistenceServiceModelShoppingListRecipe recipe) =>
                recipe.copyWith(
              ingredients: recipe.ingredients
                  .filter(
                    (
                      final PersistenceServiceModelShoppingListIngredient
                          ingredient,
                    ) =>
                        !ingredient.isTickedOff,
                  )
                  .toList(),
            ),
          )
          .toEither<MyError>(
            () => MyError(
              message:
                  'Shopping list box does not contain recipe with id $recipeId',
            ),
          )
          .toTaskEither()
          .flatMap(
            (PersistenceServiceModelShoppingListRecipe recipe) =>
                TaskEither<MyError, void>.tryCatch(
              () async => await shoppingListBox.put(recipeId, recipe),
              MyError.fromErrorAndStackTrace,
            ),
          );
}
