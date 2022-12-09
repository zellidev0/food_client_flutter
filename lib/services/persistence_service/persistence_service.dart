import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/services/persistence_service/persistence_service_model.dart';
import 'package:food_client/ui/cart/cart_persistence_service.dart';
import 'package:food_client/ui/single_recipe/single_recipe_persistence_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hive_flutter/hive_flutter.dart';

const String ingredientsBoxName = 'ingredientsBox';

abstract class PersistenceServiceAggregator
    extends StateNotifier<PersistenceServiceModel>
    implements CartPersistenceService, SingleRecipePersistenceService {
  PersistenceServiceAggregator(super.state);
}

class PersistenceService extends PersistenceServiceAggregator {
  late Box<PersistenceServiceModelShoppingListRecipe> shoppingListBox;

  PersistenceService()
      : super(
          const PersistenceServiceModel(
            recipes: <PersistenceServiceModelShoppingListRecipe>[],
          ),
        ) {
    shoppingListBox = Hive.box<PersistenceServiceModelShoppingListRecipe>(
      ingredientsBoxName,
    );
    shoppingListBox.listenable().addListener(() {
      state = state.copyWith(recipes: shoppingListBox.values.toList());
    });
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
                  ),
                )
                .toList(),
            recipeId: recipe.recipeId,
            servings: recipe.servings,
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
    required final List<String> recipeKeys,
  }) =>
      Task<void>(
        () async => await shoppingListBox.deleteAll(
          IterableZip<String>(<List<String>>[recipeKeys, ingredientKeys]).map(
            (final List<String> ids) => buildKey(
              recipeId: ids[0],
              ingredientId: ids[1],
            ),
          ),
        ),
      );

  String buildKey({
    required final String ingredientId,
    required final String recipeId,
  }) =>
      '$recipeId\$$ingredientId';
}

CartPersistenceServiceModelRecipe mapToCartPersistenceServiceModelRecipe(
  final PersistenceServiceModelShoppingListRecipe recipe,
) =>
    CartPersistenceServiceModelRecipe(
      recipeId: recipe.recipeId,
      ingredients: recipe.ingredients
          .map(mapToCartPersistenceServiceModelIngredient)
          .toList(),
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
        );
