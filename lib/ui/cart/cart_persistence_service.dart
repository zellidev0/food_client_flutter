import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_persistence_service.freezed.dart';

abstract class CartPersistenceService {
  List<CartPersistenceServiceModelRecipe> getShoppingCardRecipes();
  Task<void> updateIngredient({
    required final bool isTickedOff,
    required final String ingredientId,
    required final String recipeId,
  });
  Task<void> deleteIngredients({
    required final List<String> ingredientKeys,
    required final List<String> recipeKeys,
  });
}

@freezed
class CartPersistenceServiceModelRecipe
    with _$CartPersistenceServiceModelRecipe {
  const factory CartPersistenceServiceModelRecipe({
    required final String recipeId,
    required final String title,
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
  }) = _CartPersistenceServiceModelIngredient;
}
