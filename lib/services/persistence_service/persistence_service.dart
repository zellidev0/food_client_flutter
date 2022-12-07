import 'package:collection/collection.dart';
import 'package:food_client/services/persistence_service/persistence_service_model.dart';
import 'package:food_client/ui/cart/cart_persistence_service.dart';
import 'package:food_client/ui/single_recipe/single_recipe_persistence_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hive_flutter/hive_flutter.dart';

const String ingredientsBoxName = 'ingredientsBox';

abstract class PersistenceServiceAggregator
    implements CartPersistenceService, SingleRecipePersistenceService {}

class PersistenceService implements PersistenceServiceAggregator {
  late Box<PersistenceServiceModelShoppingListIngredient>
      shoppingListIngredientsBox;

  PersistenceService() {
    shoppingListIngredientsBox =
        Hive.box<PersistenceServiceModelShoppingListIngredient>(
      ingredientsBoxName,
    );
  }

  @override
  List<CartPersistenceServiceModelIngredient> getShoppingCardIngredients() =>
      _readAllShoppingCardIngredientsAndSetState()
          .map(mapToCartPersistenceServiceModelIngredient)
          .toList();

  @override
  Task<void> addIngredient({
    required final SingleRecipePersistenceServiceIngredient ingredient,
  }) =>
      Task<void>(
        () async => await shoppingListIngredientsBox.put(
          buildKey(
            ingredientId: ingredient.ingredientId,
            recipeId: ingredient.recipeId,
          ),
          PersistenceServiceModelShoppingListIngredient(
            ingredientId: ingredient.ingredientId,
            imageUrl: ingredient.imageUrl,
            slug: ingredient.slug,
            isTickedOff: ingredient.isTickedOff,
            recipeId: ingredient.recipeId,
            displayedName: ingredient.displayedName,
            amount: ingredient.amount,
            unit: ingredient.unit,
          ),
        ),
      );

  @override
  bool isInShoppingCart({
    required final String ingredientId,
    required final String recipeId,
  }) =>
      shoppingListIngredientsBox.containsKey(
        buildKey(
          ingredientId: ingredientId,
          recipeId: recipeId,
        ),
      );

  @override
  Task<void> removeIngredient({
    required final String ingredientId,
    required final String recipeId,
  }) =>
      Task<void>(
        () async => await shoppingListIngredientsBox.delete(
          buildKey(
            ingredientId: ingredientId,
            recipeId: recipeId,
          ),
        ),
      );

  List<PersistenceServiceModelShoppingListIngredient>
      _readAllShoppingCardIngredientsAndSetState() =>
          shoppingListIngredientsBox.values.toList();

  @override
  Task<void> updateIngredient({
    required final CartPersistenceServiceModelIngredient ingredient,
  }) =>
      Task<void>(
        () async => await shoppingListIngredientsBox.put(
          buildKey(
            ingredientId: ingredient.ingredientId,
            recipeId: ingredient.recipeId,
          ),
          PersistenceServiceModelShoppingListIngredient(
            ingredientId: ingredient.ingredientId,
            imageUrl: ingredient.imageUrl,
            slug: ingredient.slug,
            isTickedOff: ingredient.isTickedOff,
            recipeId: ingredient.recipeId,
            displayedName: ingredient.displayedName,
            amount: ingredient.amount,
            unit: ingredient.unit,
          ),
        ),
      );

  @override
  Task<void> deleteIngredients({
    required final List<String> ingredientKeys,
    required final List<String> recipeKeys,
  }) =>
      Task<void>(
        () async => await shoppingListIngredientsBox.deleteAll(
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

CartPersistenceServiceModelIngredient
    mapToCartPersistenceServiceModelIngredient(
  final PersistenceServiceModelShoppingListIngredient ingredient,
) =>
        CartPersistenceServiceModelIngredient(
          isTickedOff: ingredient.isTickedOff,
          recipeId: ingredient.recipeId,
          imageUrl: ingredient.imageUrl,
          ingredientId: ingredient.ingredientId,
          slug: ingredient.slug,
          displayedName: ingredient.displayedName,
          amount: ingredient.amount,
          unit: ingredient.unit,
        );
