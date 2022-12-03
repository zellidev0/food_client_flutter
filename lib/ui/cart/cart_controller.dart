import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/ui/cart/cart_model.dart';
import 'package:food_client/ui/cart/cart_navigation_service.dart';
import 'package:food_client/ui/cart/cart_view.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_controller.g.dart';

@riverpod
class CartControllerImplementation extends _$CartControllerImplementation
    implements CartController {
  late final CartNavigationService _navigationService;

  @override
  CartModel build() {
    _navigationService =
        ref.watch(bottomNavigationBarNavigationServiceProvider);
    return CartModel(
      ingredients: [
        CartModelIngredient(
          ingredient: CartModelIngredientInfo(
            recipeId: 'recipeId',
            imageUrl: none(),
            id: 'id',
            slug: 'slug',
            displayedName: "displayedName",
            amount: some(10),
            unit: some('g'),
          ),
          isTickedOff: false,
        ),
        CartModelIngredient(
          ingredient: CartModelIngredientInfo(
            recipeId: 'recipeId',
            imageUrl: none(),
            id: 'id',
            slug: 'slug',
            displayedName: "displayedName",
            amount: some(10),
            unit: some('g'),
          ),
          isTickedOff: false,
        ),
        CartModelIngredient(
          ingredient: CartModelIngredientInfo(
            recipeId: 'recipeId',
            imageUrl: none(),
            id: 'id',
            slug: 'slug',
            displayedName: "displayedName",
            amount: some(10),
            unit: some('g'),
          ),
          isTickedOff: false,
        ),
        CartModelIngredient(
          ingredient: CartModelIngredientInfo(
            recipeId: 'recipeId',
            imageUrl: none(),
            id: 'id',
            slug: 'slug',
            displayedName: "displayedName",
            amount: some(10),
            unit: some('g'),
          ),
          isTickedOff: false,
        ),
        CartModelIngredient(
          ingredient: CartModelIngredientInfo(
            recipeId: 'recipeId',
            imageUrl: none(),
            id: 'id',
            slug: 'slug',
            displayedName: "displayedName",
            amount: some(10),
            unit: some('g'),
          ),
          isTickedOff: false,
        ),CartModelIngredient(
          ingredient: CartModelIngredientInfo(
            recipeId: 'recipeId',
            imageUrl: none(),
            id: 'id',
            slug: 'slug',
            displayedName: "displayedName",
            amount: some(10),
            unit: some('g'),
          ),
          isTickedOff: false,
        ),CartModelIngredient(
          ingredient: CartModelIngredientInfo(
            recipeId: 'recipeId',
            imageUrl: none(),
            id: 'id',
            slug: 'slug',
            displayedName: "displayedName",
            amount: some(10),
            unit: some('g'),
          ),
          isTickedOff: false,
        ),CartModelIngredient(
          ingredient: CartModelIngredientInfo(
            recipeId: 'recipeId',
            imageUrl: none(),
            id: 'id',
            slug: 'slug',
            displayedName: "displayedName",
            amount: some(10),
            unit: some('g'),
          ),
          isTickedOff: false,
        ),CartModelIngredient(
          ingredient: CartModelIngredientInfo(
            recipeId: 'recipeId',
            imageUrl: none(),
            id: 'id',
            slug: 'slug',
            displayedName: "displayedName",
            amount: some(10),
            unit: some('g'),
          ),
          isTickedOff: false,
        ),CartModelIngredient(
          ingredient: CartModelIngredientInfo(
            recipeId: 'recipeId',
            imageUrl: none(),
            id: 'id',
            slug: 'slug',
            displayedName: "displayedName",
            amount: some(10),
            unit: some('g'),
          ),
          isTickedOff: false,
        ),CartModelIngredient(
          ingredient: CartModelIngredientInfo(
            recipeId: 'recipeId',
            imageUrl: none(),
            id: 'id',
            slug: 'slug',
            displayedName: "displayedName",
            amount: some(10),
            unit: some('g'),
          ),
          isTickedOff: false,
        ),CartModelIngredient(
          ingredient: CartModelIngredientInfo(
            recipeId: 'recipeId',
            imageUrl: none(),
            id: 'id',
            slug: 'slug',
            displayedName: "displayedName",
            amount: some(10),
            unit: some('g'),
          ),
          isTickedOff: false,
        ),CartModelIngredient(
          ingredient: CartModelIngredientInfo(
            recipeId: 'recipeId',
            imageUrl: none(),
            id: 'id',
            slug: 'slug',
            displayedName: "displayedName",
            amount: some(10),
            unit: some('g'),
          ),
          isTickedOff: false,
        ),CartModelIngredient(
          ingredient: CartModelIngredientInfo(
            recipeId: 'recipeId',
            imageUrl: none(),
            id: 'id',
            slug: 'slug',
            displayedName: "displayedName",
            amount: some(10),
            unit: some('g'),
          ),
          isTickedOff: false,
        ),CartModelIngredient(
          ingredient: CartModelIngredientInfo(
            recipeId: 'recipeId',
            imageUrl: none(),
            id: 'id',
            slug: 'slug',
            displayedName: "displayedName",
            amount: some(10),
            unit: some('g'),
          ),
          isTickedOff: false,
        ),CartModelIngredient(
          ingredient: CartModelIngredientInfo(
            recipeId: 'recipeId',
            imageUrl: none(),
            id: 'id',
            slug: 'slug',
            displayedName: "displayedName",
            amount: some(10),
            unit: some('g'),
          ),
          isTickedOff: false,
        ),CartModelIngredient(
          ingredient: CartModelIngredientInfo(
            recipeId: 'recipeId',
            imageUrl: none(),
            id: 'id',
            slug: 'slug',
            displayedName: "displayedName",
            amount: some(10),
            unit: some('g'),
          ),
          isTickedOff: false,
        ),CartModelIngredient(
          ingredient: CartModelIngredientInfo(
            recipeId: 'recipeId',
            imageUrl: none(),
            id: 'id',
            slug: 'slug',
            displayedName: "displayedName",
            amount: some(10),
            unit: some('g'),
          ),
          isTickedOff: false,
        ),CartModelIngredient(
          ingredient: CartModelIngredientInfo(
            recipeId: 'recipeId',
            imageUrl: none(),
            id: 'id',
            slug: 'slug',
            displayedName: "displayedName",
            amount: some(10),
            unit: some('g'),
          ),
          isTickedOff: false,
        ),CartModelIngredient(
          ingredient: CartModelIngredientInfo(
            recipeId: 'recipeId',
            imageUrl: none(),
            id: 'id',
            slug: 'slug',
            displayedName: "displayedName",
            amount: some(10),
            unit: some('g'),
          ),
          isTickedOff: false,
        ),CartModelIngredient(
          ingredient: CartModelIngredientInfo(
            recipeId: 'recipeId',
            imageUrl: none(),
            id: 'id',
            slug: 'slug',
            displayedName: "displayedName",
            amount: some(10),
            unit: some('g'),
          ),
          isTickedOff: false,
        ),CartModelIngredient(
          ingredient: CartModelIngredientInfo(
            recipeId: 'recipeId',
            imageUrl: none(),
            id: 'id',
            slug: 'slug',
            displayedName: "displayedName",
            amount: some(10),
            unit: some('g'),
          ),
          isTickedOff: false,
        ),CartModelIngredient(
          ingredient: CartModelIngredientInfo(
            recipeId: 'recipeId',
            imageUrl: none(),
            id: 'id',
            slug: 'slug',
            displayedName: "displayedName",
            amount: some(10),
            unit: some('g'),
          ),
          isTickedOff: false,
        ),CartModelIngredient(
          ingredient: CartModelIngredientInfo(
            recipeId: 'recipeId',
            imageUrl: none(),
            id: 'id',
            slug: 'slug',
            displayedName: "displayedName",
            amount: some(10),
            unit: some('g'),
          ),
          isTickedOff: false,
        ),CartModelIngredient(
          ingredient: CartModelIngredientInfo(
            recipeId: 'recipeId',
            imageUrl: none(),
            id: 'id',
            slug: 'slug',
            displayedName: "displayedName",
            amount: some(10),
            unit: some('g'),
          ),
          isTickedOff: false,
        ),CartModelIngredient(
          ingredient: CartModelIngredientInfo(
            recipeId: 'recipeId',
            imageUrl: none(),
            id: 'id',
            slug: 'slug',
            displayedName: "displayedName",
            amount: some(10),
            unit: some('g'),
          ),
          isTickedOff: false,
        ),
      ],
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
