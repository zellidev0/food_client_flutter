import 'dart:convert';

import 'package:food_client/commons/error.dart';
import 'package:food_client/commons/utils.dart';
import 'package:food_client/services/persistence_service/persistence_service_model.dart';
import 'package:food_client/ui/cart/services/cart_persistence_service.dart';
import 'package:food_client/ui/history/services/history_persistence_service.dart';
import 'package:food_client/ui/home/services/home_persistence_service.dart';
import 'package:food_client/ui/ingredients_sorting/services/ingredients_sorting_persistence_service.dart';
import 'package:food_client/ui/single_recipe/services/single_recipe_persistence_service.dart';

import 'package:fpdart/fpdart.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'persistence_service.g.dart';

const String ingredientsBoxName = 'ingredientsBox';
const String sortingUnitsBoxName = 'sortingUnitsBox';
const String activeShoppingListSortingBoxName = 'activeShoppingListSortingBox';
const String activeShoppingListSortingKey = 'activeShoppingListSortingBoxKey';
const String historyRecipeBoxName = 'historyRecipeBox';

abstract class PersistenceServiceAggregator
    implements
        CartPersistenceService,
        SingleRecipePersistenceService,
        IngredientsSortingPersistenceService,
        HistoryPersistenceService,
        HomePersistenceService {}

@riverpod
class PersistenceService extends _$PersistenceService
    implements PersistenceServiceAggregator {
  late Box<PersistenceServiceModelShoppingListRecipe> shoppingListBox;
  late Box<PersistenceServiceModelSortingUnit> sortingUnits;
  late Box<PersistenceServiceModelActiveSorting> activeShoppingListSortingBox;
  late Box<PersistenceServiceModelHistoryRecipe> historyRecipeBox;

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
    historyRecipeBox = Hive.box<PersistenceServiceModelHistoryRecipe>(
      historyRecipeBoxName,
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

  @override
  TaskEither<MyError, void> deleteRecipe({required final String recipeId}) =>
      TaskEither<MyError, void>.tryCatch(
        () async => await shoppingListBox.delete(recipeId),
        MyError.fromErrorAndStackTrace,
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
  TaskEither<MyError, void> saveUnit({
    required final IngredientsSortingPersistenceModelUnit unit,
  }) =>
      TaskEither<MyError, void>.tryCatch(
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
        MyError.fromErrorAndStackTrace,
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
  TaskEither<
      MyError,
      List<
          HistoryPersistenceServiceModelRecipe>> getHistoryRecipes() =>
      TaskEither<MyError, List<HistoryPersistenceServiceModelRecipe>>.tryCatch(
        () async => historyRecipeBox.values
            .map(
              (PersistenceServiceModelHistoryRecipe recipe) =>
                  HistoryPersistenceServiceModelRecipe(
                recipeId: recipe.recipeId,
                title: recipe.title,
                imagePath: recipe.imagePath,
                createdAt: DateTime.parse(recipe.createdAt),
                origin: PersistenceServiceModelHistoryRecipeOrigin.fromJson(
                  jsonDecode(recipe.origin),
                ).map(
                  clicked: (_) =>
                      const HistoryPersistenceServiceModelOrigin.clicked(),
                ),
              ),
            )
            .toList(),
        MyError.fromErrorAndStackTrace,
      );

  @override
  TaskEither<MyError, void> addRecipeOpeningToHistory({
    required final String recipeId,
    required final String recipeTitle,
    required final Option<Uri> imagePath,
    required final DateTime createdAt,
  }) =>
      TaskEither<MyError, void>.tryCatch(
        () async => historyRecipeBox.add(
          PersistenceServiceModelHistoryRecipe(
            recipeId: recipeId,
            title: recipeTitle,
            imagePath: imagePath,
            origin: jsonEncode(
              const PersistenceServiceModelHistoryRecipeOrigin.clicked()
                  .toJson(),
            ),
            createdAt: createdAt.toIso8601String(),
          ),
        ),
        MyError.fromErrorAndStackTrace,
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
