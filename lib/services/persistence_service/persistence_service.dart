import 'package:food_client/services/persistence_service/persistence_service_model.dart';
import 'package:food_client/ui/cart/cart_persistence_service.dart';
import 'package:food_client/ui/single_recipe/single_recipe_persistence_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'persistence_service.g.dart';

const String ingredientsBoxName = 'ingredientsBox';

abstract class PersistenceServiceAggregator
    implements CartPersistenceService, SingleRecipePersistenceService {}

@Riverpod(keepAlive: true)
PersistenceServiceAggregator persistenceService(
  final PersistenceServiceRef ref,
) =>
    PersistenceService();

class PersistenceService implements PersistenceServiceAggregator {
  late Box<PersistenceServiceModelShoppingListIngredient> _ingredientsBox;

  PersistenceService() {
    _ingredientsBox = Hive.box<PersistenceServiceModelShoppingListIngredient>(
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
      Task<void>(() async => await _ingredientsBox.put(
            ingredient.id,
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
          ));

  List<PersistenceServiceModelShoppingListIngredient>
      _readAllShoppingCardIngredientsAndSetState() =>
          _ingredientsBox.values.toList();
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
