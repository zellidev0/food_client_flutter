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
          _buildKey(
            ingredientId: ingredient.id,
            recipeId: ingredient.recipeId,
          ),
          PersistenceServiceModelShoppingListIngredient(
            id: ingredient.id,
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
  bool hasSavedIngredient({
    required final String ingredientId,
    required final String recipeId,
  }) =>
      shoppingListIngredientsBox.containsKey( _buildKey(
        ingredientId: ingredientId,
        recipeId: recipeId,
      ),);

  @override
  Task<void> removeIngredient({
    required final String ingredientId,
    required final String recipeId,
  }) =>
      Task<void>(
        () async => await shoppingListIngredientsBox.delete(
          _buildKey(
            ingredientId: ingredientId,
            recipeId: recipeId,
          ),
        ),
      );

  String _buildKey({
    required final String ingredientId,
    required final String recipeId,
  }) =>
      'recipe:$recipeId;ingredient:$ingredientId';

  List<PersistenceServiceModelShoppingListIngredient>
      _readAllShoppingCardIngredientsAndSetState() =>
          shoppingListIngredientsBox.values.toList();
}

CartPersistenceServiceModelIngredient
    mapToCartPersistenceServiceModelIngredient(
  final PersistenceServiceModelShoppingListIngredient ingredient,
) =>
        CartPersistenceServiceModelIngredient(
          isTickedOff: ingredient.isTickedOff,
          recipeId: ingredient.recipeId,
          imageUrl: ingredient.imageUrl,
          id: ingredient.id,
          slug: ingredient.slug,
          displayedName: ingredient.displayedName,
          amount: ingredient.amount,
          unit: ingredient.unit,
        );
