import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_persistence_service.freezed.dart';

abstract class CartPersistenceService {
  List<CartPersistenceServiceModelIngredient> getShoppingCardIngredients();
}


@freezed
class CartPersistenceServiceModelIngredient with _$CartPersistenceServiceModelIngredient {
  const factory CartPersistenceServiceModelIngredient({
    required final bool isTickedOff,
    required final String recipeId,
    required final Option<Uri> imageUrl,
    required final String id,
    required final String slug,
    required final String displayedName,
    required final Option<double> amount,
    required final Option<String> unit,
  }) = _CartPersistenceServiceModelIngredient;
}
