import 'package:flutter/material.dart';
import 'package:food_client/mvc.dart';
import 'package:food_client/ui/cart/cart_model.dart';

abstract class CartController extends MvcController {
  Future<void> tickOff({
    required final String ingredientId,
    required final List<String> recipeIds,
    required final bool isTickedOff,
  });
  void openSingleRecipe({required final String recipeId});
  void showDeleteRecipeDialog({required final String recipeId});
  void openModalBottomSheet({required final Widget child});
  void setActiveSorting({required final CartModelSorting sorting});
  void reorderIngredients({
    required final int oldIndex,
    required final int newIndex,
    required final List<CartModelIngredient> ingredients,
    required final CartModelSorting sorting,
  });
}
