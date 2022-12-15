import 'dart:async';

import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
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
          recipeId: recipe.recipeId,
          imageUrl: recipe.imagePath.flatMap(
            (final Uri uri) => _imageSizerService
                .getUrl(filePath: uri, widthPixels: _widthPixels)
                .toOption(),
          ),
          title: recipe.title,
          serving: recipe.serving,
        ),
      )
      .toList();

  @override
  void showDeleteRecipeDialog({
    required final String recipeId,
  }) {
    unawaited(
      _navigationService.showDialog(
        title: 'ui.cart_view.dialogs.remove_recipe.title'.tr(),
        content: 'ui.cart_view.dialogs.remove_recipe.content'.tr(),
        actions: some(
          <NavigationServiceDialogAction>[
            NavigationServiceDialogAction(
              text: 'ui.cart_view.dialogs.remove_recipe.actions.cancel'.tr(),
              onPressed: () {},
            ),
            NavigationServiceDialogAction(
              text: 'ui.cart_view.dialogs.remove_recipe.actions.only_ticked_off'
                  .tr(),
              onPressed: () async {
                await optionOf(
                  state.recipes.firstWhereOrNull(
                    (final CartModelRecipe recipe) =>
                        recipe.recipeId == recipeId,
                  ),
                )
                    .map(
                      (final CartModelRecipe recipe) => recipe.ingredients
                          .filter(
                            (final CartModelIngredient ingredient) =>
                                ingredient.isTickedOff,
                          )
                          .map(
                            (final CartModelIngredient ingredient) =>
                                ingredient.ingredient.ingredientId,
                          )
                          .toList(),
                    )
                    .fold(
                      () => null,
                      (final List<String> ingredientIds) => _persistenceService
                          .deleteIngredients(
                            ingredientKeys: ingredientIds,
                            recipeId: recipeId,
                          )
                          .run(),
                    );
                state = state.copyWith(recipes: _getAllRecipes());
              },
            ),
            NavigationServiceDialogAction(
              text: 'ui.cart_view.dialogs.remove_recipe.actions.whole_recipe'
                  .tr(),
              onPressed: () async {
                await _persistenceService
                    .deleteRecipe(recipeId: recipeId)
                    .run();
                state = state.copyWith(recipes: _getAllRecipes());
              },
            ),
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
