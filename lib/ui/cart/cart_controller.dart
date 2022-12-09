import 'dart:async';

import 'package:food_client/commons/utils.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/ui/cart/cart_model.dart';
import 'package:food_client/ui/cart/cart_navigation_service.dart';
import 'package:food_client/ui/cart/cart_persistence_service.dart';
import 'package:food_client/ui/cart/cart_view.dart';
import 'package:food_client/ui/cart/cart_web_image_sizer_service.dart';
import 'package:fpdart/fpdart.dart';


const int _widthPixels = 200;

class CartControllerImplementation extends CartController {
  final CartNavigationService _navigationService;
  final CartPersistenceService _persistenceService;
  final CartWebImageSizerService _imageSizerService;

  CartControllerImplementation(
    super.state, {
    required final CartNavigationService navigationService,
    required final CartPersistenceService persistenceService,
    required final CartWebImageSizerService imageSizerService,
  })  : _navigationService = navigationService,
        _persistenceService = persistenceService,
        _imageSizerService = imageSizerService {
    state = state.copyWith(recipes: _getAllRecipes());
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

  @override
  Future<void> tickOff({
    required final String ingredientId,
    required final String recipeId,
    required final bool isTickedOff,
  }) async {
    await _persistenceService
        .updateIngredient(
          isTickedOff: isTickedOff,
          ingredientId: ingredientId,
          recipeId: recipeId,
        )
        .run();
    state = state.copyWith(recipes: _getAllRecipes());
  }

  CartPersistenceServiceModelIngredient
      mapToCartPersistenceServiceModelIngredient({
    required final bool isTickedOff,
    required final CartModelIngredient ingredient,
  }) =>
          CartPersistenceServiceModelIngredient(
            isTickedOff: isTickedOff,
            imageUrl: ingredient.ingredient.imageUrl,
            ingredientId: ingredient.ingredient.ingredientId,
            slug: ingredient.ingredient.slug,
            displayedName: ingredient.ingredient.displayedName,
            amount: ingredient.ingredient.amount,
            unit: ingredient.ingredient.unit,
          );

  List<CartModelRecipe> _getAllRecipes() => _persistenceService
      .getShoppingCardRecipes()
      .map(
        (final CartPersistenceServiceModelRecipe recipe) => CartModelRecipe(
          ingredients:
              recipe.ingredients.map(mapToCartModelIngredient).toList(),
          color: generateRandomPastelColor(seed: recipe.recipeId.hashCode),
          recipeId: recipe.recipeId,
          imageUrl: recipe.imagePath.flatMap(
            (final Uri uri) => _imageSizerService
                .getUrl(filePath: uri, widthPixels: _widthPixels)
                .toOption(),
          ),
          title: recipe.title,
        ),
      )
      .toList();

  @override
  void showDeleteDialog() {
    unawaited(
      _navigationService.showDialog(
        title: 'Delete all ticked off?',
        content: 'Delete all ticket off ingredients, permanently?',
        actions: some(
          <NavigationServiceDialogAction>[
            NavigationServiceDialogAction(
              text: 'Cancel',
              onPressed: () {},
            ),
            // NavigationServiceDialogAction(
            //   text: 'Delete',
            //   onPressed: () async {
            //     await _persistenceService
            //         .deleteIngredients(
            //           ingredientKeys: state.ingredients
            //               .where(
            //                 (final CartModelIngredient element) =>
            //                     element.isTickedOff,
            //               )
            //               .map(
            //                 (final CartModelIngredient ingredient) =>
            //                     ingredient.ingredient.ingredientId,
            //               )
            //               .toList(),
            //           recipeKeys: state.ingredients
            //               .where(
            //                 (final CartModelIngredient element) =>
            //                     element.isTickedOff,
            //               )
            //               .map(
            //                 (final CartModelIngredient ingredient) =>
            //                     ingredient.ingredient.recipeId,
            //               )
            //               .toList(),
            //         )
            //         .run();
            //     state = state.copyWith(ingredients: _getAllIngredients());
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}

CartModelIngredient mapToCartModelIngredient(
  final CartPersistenceServiceModelIngredient ingredient,
) =>
    CartModelIngredient(
      ingredient: CartModelIngredientInfo(
        imageUrl: ingredient.imageUrl,
        ingredientId: ingredient.ingredientId,
        slug: ingredient.slug,
        displayedName: ingredient.displayedName,
        amount: ingredient.amount,
        unit: ingredient.unit,
      ),
      isTickedOff: ingredient.isTickedOff,
    );
