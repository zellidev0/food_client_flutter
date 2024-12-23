import 'dart:async';

import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/commons/view_state.dart';
import 'package:food_client/services/logging_service/logging_service.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/services/navigation_service/typed_routes.dart';
import 'package:food_client/ui/cart/cart_controller.dart';
import 'package:food_client/ui/cart/cart_model.dart';
import 'package:food_client/ui/cart/services/cart_navigation_service.dart';
import 'package:food_client/ui/cart/services/cart_persistence_service.dart';
import 'package:food_client/ui/cart/services/cart_web_image_sizer_service.dart';
import 'package:fpdart/fpdart.dart';

typedef StoredSortingUnit
    = CartPersistenceServiceModelActiveSortingSelectedUnit;
typedef StoredSorting = CartPersistenceServiceModelActiveSorting;

const int _widthPixels = 200;

class CartControllerImplementation extends Cubit<CartModel>
    implements CartController {
  final CartNavigationService navigationService;
  final CartPersistenceService persistenceService;
  final CartWebImageSizerService imageSizerService;
  final LoggingService logger;
  final bool combinedIngredients;
  CartControllerImplementation({
    required this.navigationService,
    required this.persistenceService,
    required this.imageSizerService,
    required this.logger,
    required this.combinedIngredients,
  }) : super(
          CartModel(
            data: CartModelData(
              sorting: const CartModelSorting.custom(ingredientIds: <String>[]),
              recipes: <CartModelRecipe>[],
              ingredients: <CartModelIngredient>[],
              sortingUnits: persistenceService
                  .getSortingUnits()
                  .map(_mapSortingUnit)
                  .toList(),
              combineIngredients: combinedIngredients,
            ).toViewStateData(),
          ),
        ) {
    emit(
      state.copyWith(
        data: state.data.mapData(
          (CartModelData data) => data.copyWith(
            sorting: _readActiveSorting(),
            recipes: _readStoredRecipes(),
            ingredients: _getAllIngredientsSorted(
              combineIngredients: combinedIngredients,
              sorting: _readActiveSorting(),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void openSingleRecipe({required final String recipeId}) =>
      navigationService.goTo(
        SingleRecipePageRoute(recipeId: recipeId).location,
      );

  @override
  void tickOff({
    required final String ingredientId,
    required final List<String> recipeIds,
    required final bool isTickedOff,
  }) =>
      unawaited(
        persistenceService
            .updateIngredients(
              isTickedOff: isTickedOff,
              ingredientId: ingredientId,
              recipeIds: recipeIds,
            )
            .match(
              logger.error,
              (_) => emit(
                state.copyWith(
                  data: state.data.mapData(
                    (CartModelData data) => data.copyWith(
                      recipes: _readStoredRecipes(),
                      ingredients: _getAllIngredientsSorted(
                        combineIngredients: data.combineIngredients,
                        sorting: data.sorting,
                      ),
                    ),
                  ),
                ),
              ),
            )
            .run(),
      );

  @override
  Future<void> openModalBottomSheet({
    required final Widget child,
  }) async =>
      await navigationService.showModalBottomSheet(child: child);

  @override
  void showDeleteRecipeDialog({
    required final String recipeId,
  }) {
    unawaited(
      navigationService.showDialog(
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
              onPressed: persistenceService
                  .deleteTicketOffIngredientsOfRecipe(recipeId: recipeId)
                  .match(
                    logger.error,
                    (_) => emit(
                      state.copyWith(
                        data: state.data.mapData(
                          (CartModelData data) => data.copyWith(
                            recipes: _readStoredRecipes(),
                            ingredients: _getAllIngredientsSorted(
                              sorting: data.sorting,
                              combineIngredients: data.combineIngredients,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                  .run,
            ),
            NavigationServiceDialogAction(
              text: 'ui.cart_view.dialogs.remove_recipe.actions.whole_recipe'
                  .tr(),
              onPressed: persistenceService
                  .deleteRecipe(recipeId: recipeId)
                  .match(
                    logger.error,
                    (_) => emit(
                      state.copyWith(
                        data: state.data.mapData(
                          (CartModelData data) => data.copyWith(
                            recipes: _readStoredRecipes(),
                            ingredients: _getAllIngredientsSorted(
                              sorting: data.sorting,
                              combineIngredients: data.combineIngredients,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                  .run,
            ),
          ],
        ),
      ),
    );
  }

  List<CartModelRecipe> _readStoredRecipes() => persistenceService
      .getShoppingCardRecipes()
      .map(
        (final CartPersistenceServiceModelRecipe recipe) => CartModelRecipe(
          recipeId: recipe.recipeId,
          imageUrl: recipe.imagePath.flatMap(
            (final Uri uri) => imageSizerService
                .getUrl(filePath: uri, widthPixels: _widthPixels)
                .toOption(),
          ),
          title: recipe.title,
          serving: recipe.serving,
        ),
      )
      .toList();

  List<CartModelIngredient> _getAllIngredientsSorted({
    required final CartModelSorting sorting,
    required final bool combineIngredients,
  }) {
    List<CartModelIngredient> ingredients = persistenceService
        .getShoppingCardRecipes()
        .flatMap(
          (final CartPersistenceServiceModelRecipe recipe) => recipe.ingredients
              .map(
                (final CartPersistenceServiceModelIngredient ingredient) =>
                    mapToCartModelIngredient(
                  ingredient: ingredient,
                  recipeId: recipe.recipeId,
                ),
              )
              .toList(),
        )
        .toList();
    if (combineIngredients) {
      ingredients = _combineIngredients(allIngredients: ingredients);
    }

    return sortIngredientsToSorting(
      sorting: sorting,
      ingredients: ingredients,
    );
  }

  List<CartModelIngredient> sortIngredientsToSorting({
    required final CartModelSorting sorting,
    required final List<CartModelIngredient> ingredients,
  }) =>
      sorting.map(
        unit: (final CartModelSortingSelectedUnit unit) =>
            ingredients.sortedByCompare(
          (final CartModelIngredient element) => element.ingredient.family,
          (
            final Option<CartModelIngredientFamily> first,
            final Option<CartModelIngredientFamily> second,
          ) =>
              first
                  .map2(
                    second,
                    (
                      final CartModelIngredientFamily familyOne,
                      final CartModelIngredientFamily familyTwo,
                    ) =>
                        unit.active.ingredientFamilies.indexWhere(
                          (final CartModelSortingIngredientFamily element) =>
                              element.familyIds.contains(familyOne.id),
                        ) -
                        unit.active.ingredientFamilies.indexWhere(
                          (final CartModelSortingIngredientFamily element) =>
                              element.familyIds.contains(familyTwo.id),
                        ),
                  )
                  .getOrElse(() => -1),
        ),
        custom: (final CartModelSortingCustom custom) =>
            ingredients.sortedByCompare(
          (final CartModelIngredient element) =>
              element.ingredient.ingredientId,
          (final String a, final String b) =>
              custom.ingredientIds.indexOf(a) - custom.ingredientIds.indexOf(b),
        ),
      );

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
  void setActiveSorting({
    required final CartModelSorting sorting,
  }) {
    unawaited(
      state.data.map(
        data: (_) async => await _.data.sorting
            .map(
              unit: (final _) => sorting.map(
                unit: (final CartModelSortingSelectedUnit unitSorting) =>
                    persistenceService.saveSorting(
                  sorting:
                      CartPersistenceServiceModelActiveSorting.selectedUnit(
                    activeSortingUnitId: unitSorting.active.id,
                    ingredientIds: unitSorting.ingredientIds,
                  ),
                ),
                custom: (final CartModelSortingCustom custom) =>
                    persistenceService.saveSorting(
                  sorting: CartPersistenceServiceModelActiveSorting.custom(
                    ingredientIds: custom.ingredientIds,
                  ),
                ),
              ),
              custom: (final CartModelSortingCustom custom) => sorting.map(
                unit: (final CartModelSortingSelectedUnit unitSorting) =>
                    persistenceService.saveSorting(
                  sorting:
                      CartPersistenceServiceModelActiveSorting.selectedUnit(
                    activeSortingUnitId: unitSorting.active.id,
                    ingredientIds: custom.ingredientIds,
                  ),
                ),
                custom: (final CartModelSortingCustom custom) =>
                    persistenceService.saveSorting(
                  sorting: CartPersistenceServiceModelActiveSorting.custom(
                    ingredientIds: custom.ingredientIds,
                  ),
                ),
              ),
            )
            .run(),
        error: (_) => null,
        loading: (_) => null,
      ),
    );

    final CartModelSorting newSorting = _readActiveSorting();
    emit(
      state.copyWith(
        data: state.data.mapData(
          (CartModelData data) => data.copyWith(
            sorting: newSorting,
            ingredients: _getAllIngredientsSorted(
              sorting: newSorting,
              combineIngredients: data.combineIngredients,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void reorderIngredients({
    required final int oldIndex,
    required final int newIndex,
    required final List<CartModelIngredient> ingredients,
    required final CartModelSorting sorting,
  }) {
    sorting.map(
      unit: (final _) {},
      custom: (final CartModelSortingCustom custom) {
        final List<CartModelIngredient> ingredients2 = <CartModelIngredient>[
          ...ingredients,
        ];
        ingredients2.insert(newIndex, ingredients2.removeAt(oldIndex));
        final List<String> ingredientIds = ingredients2
            .map(
              (final CartModelIngredient ingredient) =>
                  ingredient.ingredient.ingredientId,
            )
            .toList();
        unawaited(
          persistenceService
              .saveSorting(
                sorting: CartPersistenceServiceModelActiveSorting.custom(
                  ingredientIds: ingredientIds,
                ),
              )
              .match(
                logger.error,
                (_) => emit(
                  state.copyWith(
                    data: state.data.mapData(
                      (CartModelData data) => data.copyWith(
                        ingredients: ingredients2,
                        sorting: custom.copyWith(ingredientIds: ingredientIds),
                      ),
                    ),
                  ),
                ),
              )
              .run(),
        );
      },
    );
  }

  CartModelSorting _readActiveSorting() => persistenceService
      .getActiveSorting()
      .flatMap(
        (final StoredSorting sorting) => sorting.map(
          selectedUnit: (StoredSortingUnit unit) => optionOf(
            persistenceService.getSortingUnits().firstWhereOrNull(
                  (_) => _.id == unit.activeSortingUnitId,
                ),
          ).map(
            (_) => CartModelSorting.unit(
              active: _mapSortingUnit(_),
              ingredientIds: unit.ingredientIds,
            ),
          ),
          custom: (StoredSorting custom) => some(
            CartModelSorting.custom(ingredientIds: custom.ingredientIds),
          ),
        ),
      )
      .getOrElse(
        () => const CartModelSorting.custom(ingredientIds: <String>[]),
      );
}

CartModelIngredient mapToCartModelIngredient({
  required final CartPersistenceServiceModelIngredient ingredient,
  required final String recipeId,
}) =>
    CartModelIngredient(
      ingredient: CartModelIngredientInfo(
        imageUrl: ingredient.imageUrl,
        ingredientId: ingredient.ingredientId,
        slug: ingredient.slug,
        displayedName: ingredient.displayedName,
        amount: ingredient.amount,
        unit: ingredient.unit,
        recipeIds: <String>[recipeId],
        family: ingredient.family.map(_mapIngredientFamily),
      ),
      isTickedOff: ingredient.isTickedOff,
    );

CartModelIngredientFamily _mapIngredientFamily(
  final CartPersistenceServiceModelIngredientFamilyFamily family,
) =>
    CartModelIngredientFamily(
      id: family.id,
      type: family.type,
      iconPath: family.iconPath,
      name: family.name,
      slug: family.slug,
    );

CartModelSortingIngredientFamily _mapSortingIngredientFamily(
  CartPersistenceServiceModelSortingUnitFamily family,
) =>
    CartModelSortingIngredientFamily(
      name: family.name,
      familyIds: family.familyIds,
    );

CartModelSortingUnit _mapSortingUnit(
  CartPersistenceServiceModelSortingUnit unit,
) =>
    CartModelSortingUnit(
      id: unit.id,
      name: unit.name,
      ingredientFamilies:
          unit.ingredientFamilies.map(_mapSortingIngredientFamily).toList(),
    );
