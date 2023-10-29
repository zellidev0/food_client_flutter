import 'package:food_client/commons/utils.dart';
import 'package:food_client/services/persistence_service/persistence_service_model.dart';
import 'package:food_client/ui/cart/cart_persistence_service.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_persistence_service.dart';
import 'package:food_client/ui/single_recipe/single_recipe_persistence_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'persistence_service.g.dart';

const String ingredientsBoxName = 'ingredientsBox';
const String sortingUnitsBoxName = 'sortingUnitsBox';
const String activeShoppingListSortingBoxName = 'activeShoppingListSortingBox';
const String activeShoppingListSortingKey = 'activeShoppingListSortingBoxKey';

abstract class PersistenceServiceAggregator
    implements
        CartPersistenceService,
        SingleRecipePersistenceService,
        IngredientsSortingPersistenceService {}

@riverpod
class PersistenceService extends _$PersistenceService
    implements PersistenceServiceAggregator {
  late Box<PersistenceServiceModelShoppingListRecipe> shoppingListBox;
  late Box<PersistenceServiceModelSortingUnit> sortingUnits;
  late Box<PersistenceServiceModelActiveSorting> activeShoppingListSortingBox;

  @override
  PersistenceServiceModel build() {
    shoppingListBox = Hive.box<PersistenceServiceModelShoppingListRecipe>(
      ingredientsBoxName,
    );
    shoppingListBox.listenable().addListener(() {
      state = state.copyWith(recipes: shoppingListBox.values.toList());
    });
    sortingUnits = Hive.box<PersistenceServiceModelSortingUnit>(
      sortingUnitsBoxName,
    );
    activeShoppingListSortingBox =
        Hive.box<PersistenceServiceModelActiveSorting>(
      activeShoppingListSortingBoxName,
    );
    return const PersistenceServiceModel(
      recipes: <PersistenceServiceModelShoppingListRecipe>[],
    );
  }

  @override
  List<CartPersistenceServiceModelRecipe> getShoppingCardRecipes() =>
      _readAllShoppingCardIngredientsAndSetState()
          .map(mapToCartPersistenceServiceModelRecipe)
          .toList();

  @override
  Task<void> addRecipe({
    required final SingleRecipePersistenceServiceRecipe recipe,
  }) =>
      Task<void>(
        () async => await shoppingListBox.put(
          recipe.recipeId,
          PersistenceServiceModelShoppingListRecipe(
            ingredients: recipe.ingredients
                .map(
                  (final SingleRecipePersistenceServiceIngredient ingredient) =>
                      PersistenceServiceModelShoppingListIngredient(
                    ingredientId: ingredient.ingredientId,
                    imageUrl: ingredient.imageUrl,
                    slug: ingredient.slug,
                    isTickedOff: ingredient.isTickedOff,
                    displayedName: ingredient.displayedName,
                    amount: ingredient.amount,
                    unit: ingredient.unit,
                    family: ingredient.family.map(
                      (
                        final SingleRecipePersistenceServiceIngredientFamily
                            family,
                      ) =>
                          PersistenceServiceModelShoppingListIngredientFamily(
                        id: family.id,
                        type: family.type,
                        iconPath: family.iconPath,
                        name: family.name,
                        slug: family.slug,
                      ),
                    ),
                  ),
                )
                .toList(),
            recipeId: recipe.recipeId,
            servings: recipe.servings,
            imagePath: recipe.imagePath,
            title: recipe.title,
          ),
        ),
      );

  @override
  bool isInShoppingCart({
    required final int servings,
    required final String recipeId,
  }) =>
      optionOf(shoppingListBox.get(recipeId)).fold(
        () => false,
        (final PersistenceServiceModelShoppingListRecipe t) =>
            t.servings == servings,
      );

  List<PersistenceServiceModelShoppingListRecipe>
      _readAllShoppingCardIngredientsAndSetState() =>
          shoppingListBox.values.toList();

  @override
  Task<void> updateIngredient({
    required final bool isTickedOff,
    required final String ingredientId,
    required final String recipeId,
  }) =>
      optionOf(shoppingListBox.get(recipeId))
          .map(
            (final PersistenceServiceModelShoppingListRecipe recipe) =>
                recipe.copyWith(
              ingredients: recipe.ingredients
                  .map(
                    (final PersistenceServiceModelShoppingListIngredient ing) =>
                        ing.ingredientId == ingredientId
                            ? ing.copyWith(isTickedOff: isTickedOff)
                            : ing,
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
  Task<void> deleteTicketOffIngredientsOfRecipe({
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
          .fold(
            () => Task<void>(() async {}),
            (final PersistenceServiceModelShoppingListRecipe recipe) =>
                Task<void>(
              () async => await shoppingListBox.put(recipeId, recipe),
            ),
          );

  @override
  Task<void> deleteRecipe({required final String recipeId}) => Task<void>(
        () async => await shoppingListBox.delete(recipeId),
      );

  @override
  List<IngredientsSortingPersistenceModelUnit> getUnits() => sortingUnits.values
      .map(
        (final PersistenceServiceModelSortingUnit unit) =>
            IngredientsSortingPersistenceModelUnit(
          id: unit.id,
          name: unit.name,
          sortings: unit.sorting
              .map(
                (final PersistenceServiceModelSorting sorting) =>
                    IngredientsSortingPersistenceModelSorting(
                  ingredientFamilies: sorting.ingredientFamilies
                      .map(
                        (
                          final PersistenceServiceModelIngredientFamily family,
                        ) =>
                            IngredientsSortingPersistenceModelIngredientFamily
                                .helloFresh(
                          helloFreshFamilyId: family.helloFreshFamilyId,
                        ),
                      )
                      .toList(),
                  name: sorting.name,
                  iconPath: sorting.iconPathAsString.map(Uri.parse),
                  type: sorting.type,
                ),
              )
              .toList(),
        ),
      )
      .toList();

  @override
  Task<void> saveUnit({
    required final IngredientsSortingPersistenceModelUnit unit,
  }) =>
      Task<void>(
        () async => await sortingUnits.put(
          unit.id,
          PersistenceServiceModelSortingUnit(
            id: unit.id,
            name: unit.name,
            sorting: unit.sortings
                .map(
                  (
                    final IngredientsSortingPersistenceModelSorting sorting,
                  ) =>
                      PersistenceServiceModelSorting(
                    ingredientFamilies: sorting.ingredientFamilies
                        .map(
                          (
                            final IngredientsSortingPersistenceModelIngredientFamily
                                family,
                          ) =>
                              PersistenceServiceModelIngredientFamily
                                  .helloFresh(
                            helloFreshFamilyId: family.helloFreshFamilyId,
                          ),
                        )
                        .toList(),
                    type: sorting.type,
                    iconPathAsString:
                        sorting.iconPath.map((final Uri uri) => uri.toString()),
                    name: sorting.name,
                  ),
                )
                .toList(),
          ),
        ),
      );

  @override
  TaskEither<Exception, void> deleteUnit({required final String unitId}) =>
      TaskEither<Exception, void>.tryCatch(
        () async => await sortingUnits.delete(unitId),
        buildException,
      );

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
  Task<void> saveSorting({
    required final CartPersistenceServiceModelActiveSorting sorting,
  }) =>
      Task<void>(
        () async => await activeShoppingListSortingBox.put(
          activeShoppingListSortingKey,
          sorting.map(
            selectedUnit: (
              final CartPersistenceServiceModelActiveSortingSelectedUnit
                  selectedUnit,
            ) =>
                PersistenceServiceModelActiveSorting.unit(
              activeSortingUnitId: selectedUnit.activeSortingUnitId,
              customSortingIngredientIds:
                  selectedUnit.customSortingIngredientIds,
            ),
            custom:
                (final CartPersistenceServiceModelActiveSortingCustom custom) =>
                    PersistenceServiceModelActiveSorting.custom(
              customSortingIngredientIds: custom.customSortingIngredientIds,
            ),
          ),
        ),
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
            customSortingIngredientIds: unit.customSortingIngredientIds,
          ),
          custom: (final PersistenceServiceModelActiveSortingCustom custom) =>
              CartPersistenceServiceModelActiveSorting.custom(
            customSortingIngredientIds: custom.customSortingIngredientIds,
          ),
        ),
      );
}

CartPersistenceServiceModelRecipe mapToCartPersistenceServiceModelRecipe(
  final PersistenceServiceModelShoppingListRecipe recipe,
) =>
    CartPersistenceServiceModelRecipe(
      recipeId: recipe.recipeId,
      ingredients: recipe.ingredients
          .map(mapToCartPersistenceServiceModelIngredient)
          .toList(),
      imagePath: recipe.imagePath,
      title: recipe.title,
      serving: recipe.servings,
    );

CartPersistenceServiceModelIngredient
    mapToCartPersistenceServiceModelIngredient(
  final PersistenceServiceModelShoppingListIngredient ingredient,
) =>
        CartPersistenceServiceModelIngredient(
          isTickedOff: ingredient.isTickedOff,
          imageUrl: ingredient.imageUrl,
          ingredientId: ingredient.ingredientId,
          slug: ingredient.slug,
          displayedName: ingredient.displayedName,
          amount: ingredient.amount,
          unit: ingredient.unit,
          family: ingredient.family.map(
            (
              final PersistenceServiceModelShoppingListIngredientFamily family,
            ) =>
                CartPersistenceServiceModelIngredientFamilyFamily(
              id: family.id,
              type: family.type,
              iconPath: family.iconPath,
              name: family.name,
              slug: family.slug,
            ),
          ),
        );
