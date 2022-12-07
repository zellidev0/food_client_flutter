import 'package:food_client/commons/utils.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/ui/cart/cart_model.dart';
import 'package:food_client/ui/cart/cart_navigation_service.dart';
import 'package:food_client/ui/cart/cart_persistence_service.dart';
import 'package:food_client/ui/cart/cart_view.dart';

class CartControllerImplementation extends CartController {
  late final CartNavigationService _navigationService;
  late final CartPersistenceService _persistenceService;

  CartControllerImplementation(
    super.state, {
    required final CartNavigationService navigationService,
    required final CartPersistenceService persistenceService,
  })  : _navigationService = navigationService,
        _persistenceService = persistenceService {
    state = state.copyWith(
      ingredients: _persistenceService
          .getShoppingCardIngredients()
          .map(mapToCartModelIngredient)
          .toList(),
    );
  }

  @override
  void goBack() {
    _navigationService.goBack();
  }

  @override
  void goToCart() {}

  @override
  void goToHome() {}

  @override
  void openSingleRecipe({required final String recipeId}) {
    _navigationService.navigateToNamed(
      uri: NavigationServiceUris.singleRecipeUri.replace(
        queryParameters: <String, String>{
          NavigationServiceUris.singleRecipeIdKey: recipeId,
        },
      ),
    );
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
      color: generateRandomPastelColor(seed: ingredient.recipeId.hashCode),
    );
