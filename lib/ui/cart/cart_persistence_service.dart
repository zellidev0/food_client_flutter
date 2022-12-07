import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_persistence_service.freezed.dart';

abstract class CartPersistenceService {
  List<CartPersistenceServiceModelIngredient> getShoppingCardIngredients();
  Task<void> updateIngredient({
    required final CartPersistenceServiceModelIngredient ingredient,
  });
  Task<void> deleteIngredients({
    required final List<String> ingredientKeys,
    required final List<String> recipeKeys,
  });

}

@freezed
class CartPersistenceServiceModelIngredient
    with _$CartPersistenceServiceModelIngredient {
  const factory CartPersistenceServiceModelIngredient({
    required final bool isTickedOff,
    required final String recipeId,
    required final Option<Uri> imageUrl,
    required final String ingredientId,
    required final String slug,
    required final String displayedName,
    required final Option<double> amount,
    required final Option<String> unit,
  }) = _CartPersistenceServiceModelIngredient;
}
