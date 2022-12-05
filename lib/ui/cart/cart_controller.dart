import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/services/persistence_service/persistence_service.dart';
import 'package:food_client/ui/cart/cart_model.dart';
import 'package:food_client/ui/cart/cart_navigation_service.dart';
import 'package:food_client/ui/cart/cart_persistence_service.dart';
import 'package:food_client/ui/cart/cart_view.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_controller.g.dart';

@riverpod
class CartControllerImplementation extends _$CartControllerImplementation
    implements CartController {
  late final CartNavigationService _navigationService;
  late final CartPersistenceService _persistenceService;

  @override
  CartModel build() {
    _navigationService = ref.read(bottomNavigationBarNavigationServiceProvider);
    _persistenceService = ref.read(persistenceServiceProvider);

    return CartModel(
      ingredients: _persistenceService
          .getShoppingCardIngredients()
          .map(mapToCartModelIngredient)
          .toList(),
    );
  }

  @override
  void goBack() {
    // TODO: implement goBack
  }

  @override
  void goToCart() {
    // TODO: implement goToCart
  }

  @override
  void goToHome() {
    // TODO: implement goToHome
  }
}

CartModelIngredient mapToCartModelIngredient(
  final CartPersistenceServiceModelIngredient ingredient,
) =>
    CartModelIngredient(
      ingredient: CartModelIngredientInfo(
        recipeId: ingredient.recipeId,
        imageUrl: ingredient.imageUrl,
        id: ingredient.id,
        slug: ingredient.slug,
        displayedName: ingredient.displayedName,
        amount: ingredient.amount,
        unit: ingredient.unit,
      ),
      isTickedOff: ingredient.isTickedOff,
    );
