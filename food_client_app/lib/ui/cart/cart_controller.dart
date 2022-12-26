import 'dart:async';

import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';
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
    state = state.copyWith(
      recipes: _getAllRecipes(),
      ingredients: _getAllIngredients(),
      sortingUnits: _getAllSortingUnit(),
    );
  }

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
    required final List<String> recipeIds,
    required final bool isTickedOff,
  }) async {
    for (final String recipeId in recipeIds) {
      await _persistenceService
          .updateIngredient(
            isTickedOff: isTickedOff,
            ingredientId: ingredientId,
            recipeId: recipeId,
          )
          .run();
    }
    state = state.copyWith(
      recipes: _getAllRecipes(),
      ingredients: _getAllIngredients(),
    );
  }

  @override
  Future<void> openModalBottomSheet({
    required final Widget child,
  }) async {
    await _navigationService.showModalBottomSheet(child: child);
  }

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
                await _persistenceService
                    .deleteTicketOffIngredientsOfRecipe(recipeId: recipeId)
                    .run();
                state = state.copyWith(
                  recipes: _getAllRecipes(),
                  ingredients: _getAllIngredients(),
                );
              },
            ),
            NavigationServiceDialogAction(
              text: 'ui.cart_view.dialogs.remove_recipe.actions.whole_recipe'
                  .tr(),
              onPressed: () async {
                await _persistenceService
                    .deleteRecipe(recipeId: recipeId)
                    .run();
                state = state.copyWith(
                  recipes: _getAllRecipes(),
                  ingredients: _getAllIngredients(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  List<CartModelRecipe> _getAllRecipes() => _persistenceService
      .getShoppingCardRecipes()
      .map(
        (final CartPersistenceServiceModelRecipe recipe) => CartModelRecipe(
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

  List<CartModelIngredient> _getAllIngredients() {
    final List<CartModelIngredient> ingredients = _persistenceService
        .getShoppingCardRecipes()
        .flatMap(
          (final CartPersistenceServiceModelRecipe recipe) => recipe.ingredients
              .map(
                (final CartPersistenceServiceModelIngredient ingredient) =>
                    mapToCartModelIngredient(
                  ingredient,
                  <String>[recipe.recipeId],
                ),
              )
              .toList(),
        )
        .toList();
    if (state.combineIngredients) {
      return _combineIngredients(allIngredients: ingredients);
    }
    return ingredients;
  }

  List<CartModelSortingUnit> _getAllSortingUnit() {
    final List<CartModelSortingUnit> sortingUnits = _persistenceService
        .getSortingUnits()
        .map(
          (final CartPersistenceServiceModelSortingUnit unit) =>
              CartModelSortingUnit(
            id: unit.id,
            name: unit.name,
            ingredientFamilies: unit.ingredientFamilies
                .map(
                  (
                    final CartPersistenceServiceModelSortingUnitFamily family,
                  ) =>
                      CartModelSortingIngredientFamily(
                    name: family.name,
                    familyIds: family.familyIds,
                  ),
                )
                .toList(),
          ),
        )
        .toList();
    return sortingUnits;
  }

  List<CartModelIngredient> _combineIngredients({
    required final List<CartModelIngredient> allIngredients,
  }) =>
      allIngredients
          .toList()
          .groupFoldBy(
            (final CartModelIngredient ingredient) =>
                ingredient.ingredient.ingredientId,
            (
              final CartModelIngredient? previous,
              final CartModelIngredient element,
            ) =>
                element.ingredient.unit == previous?.ingredient.unit
                    ? element.copyWith(
                        ingredient: element.ingredient.copyWith(
                          recipeIds: <String>[
                            ...element.ingredient.recipeIds,
                            ...optionOf(previous)
                                .map(
                                  (final CartModelIngredient ingredient) =>
                                      ingredient.ingredient.recipeIds,
                                )
                                .getOrElse(() => <String>[]),
                          ],
                          amount: element.ingredient.amount.map(
                            (final double elementAmount) => optionOf(previous)
                                .flatMap(
                                  (final CartModelIngredient ingredient) =>
                                      ingredient.ingredient.amount,
                                )
                                .fold(
                                  () => elementAmount,
                                  (final double previousAmount) =>
                                      elementAmount + previousAmount,
                                ),
                          ),
                        ),
                      )
                    : element,
          )
          .values
          .toList();

  @override
  void setActiveSorting({required final CartModelSorting sorting}) {
    state.sorting.map(
      unit: (final _) => sorting.map(
        unit: (unitSorting) => _persistenceService.saveSorting(
          sorting: CartPersistenceServiceModelActiveSorting.selectedUnit(
            activeSortingUnitId: unitSorting.activeUnit.id,
            customSortingIngredientIds: unitSorting.customSortingIngredientIds,
          ),
        ),
        custom: (custom) => _persistenceService.saveSorting(
          sorting: CartPersistenceServiceModelActiveSorting.custom(
            customSortingIngredientIds: custom.customSortingIngredientIds,
          ),
        ),
      ),
      custom: (custom) => sorting.map(
        unit: (unitSorting) => _persistenceService.saveSorting(
          sorting: CartPersistenceServiceModelActiveSorting.selectedUnit(
            activeSortingUnitId: unitSorting.activeUnit.id,
            customSortingIngredientIds: custom.customSortingIngredientIds,
          ),
        ),
        custom: (custom) => _persistenceService.saveSorting(
          sorting: CartPersistenceServiceModelActiveSorting.custom(
            customSortingIngredientIds: custom.customSortingIngredientIds,
          ),
        ),
      ),
    );
    state = state.copyWith(sorting: sorting);
  }

  @override
  void reorderIngredients({
    required final int oldIndex,
    required final int newIndex,
  }) {
    final List<CartModelIngredient> ingredients = <CartModelIngredient>[
      ...state.ingredients,
    ];
    final CartModelIngredient family = ingredients.removeAt(oldIndex);
    ingredients.insert(newIndex, family);
    state = state.copyWith(ingredients: ingredients);
  }
}

CartModelIngredient mapToCartModelIngredient(
  final CartPersistenceServiceModelIngredient ingredient,
  final List<String> recipeIds,
) =>
    CartModelIngredient(
      ingredient: CartModelIngredientInfo(
        imageUrl: ingredient.imageUrl,
        ingredientId: ingredient.ingredientId,
        slug: ingredient.slug,
        displayedName: ingredient.displayedName,
        amount: ingredient.amount,
        unit: ingredient.unit,
        recipeIds: recipeIds,
        family: ingredient.family.map(
          mapToCartModelIngredientFamily,
        ),
      ),
      isTickedOff: ingredient.isTickedOff,
    );

CartModelIngredientFamily mapToCartModelIngredientFamily(
  final CartPersistenceServiceModelIngredientFamilyFamily family,
) =>
    CartModelIngredientFamily(
      id: family.id,
      type: family.type,
      iconPath: family.iconPath,
      name: family.name,
      slug: family.slug,
    );
