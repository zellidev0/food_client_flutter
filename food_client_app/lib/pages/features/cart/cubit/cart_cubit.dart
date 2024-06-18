import 'dart:async';

import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/pages/common/view_state.dart';
import 'package:food_client/pages/features/cart/cubit/cart_state.dart';
import 'package:food_client/pages/features/cart/services/cart_navigation_service.dart';
import 'package:food_client/pages/features/cart/services/cart_persistence_service.dart';
import 'package:food_client/pages/features/cart/services/cart_web_image_sizer_service.dart';
import 'package:food_client/services/logging_service/logging_service.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:fpdart/fpdart.dart';

part 'cart_cubit_utils.dart';

typedef StoredSortingUnit
    = CartPersistenceServiceModelActiveSortingSelectedUnit;
typedef StoredSorting = CartPersistenceServiceModelActiveSorting;

const int _widthPixels = 200;

class CartCubit extends Cubit<CartState> with CartCubitUtils {
  @override
  final CartPersistenceService _persistenceService;
  @override
  final CartWebImageSizerService _imageSizerService;
  final CartNavigationService _navigationService;
  final LoggingService _logger;

  final bool combinedIngredients;

  CartCubit({
    required final CartPersistenceService persistenceService,
    required final CartWebImageSizerService imageSizerService,
    required final CartNavigationService navigationService,
    required final LoggingService logger,
    required this.combinedIngredients,
  })  : _persistenceService = persistenceService,
        _imageSizerService = imageSizerService,
        _navigationService = navigationService,
        _logger = logger,
        super(const CartState(data: ViewState<CartStateData>.loading())) {
    emit(
      state.copyWith(
        data: ViewState<CartStateData>.data(
          CartStateData(
            sorting: const CartStateSorting.custom(ingredientIds: <String>[]),
            recipes: <CartStateRecipe>[],
            ingredients: <CartStateIngredient>[],
            sortingUnits: _persistenceService
                .getSortingUnits()
                .map(_mapSortingUnit)
                .toList(),
            combineIngredients: combinedIngredients,
          ),
        ).mapData(
          (CartStateData data) => data.copyWith(
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

  void openModalBottomSheet({
    required final Widget child,
  }) async =>
      await _navigationService.showModalBottomSheet(child: child);

  void tickOff({
    required final String ingredientId,
    required final List<String> recipeIds,
    required final bool isTickedOff,
  }) =>
      unawaited(
        _persistenceService
            .updateIngredients(
              isTickedOff: isTickedOff,
              ingredientId: ingredientId,
              recipeIds: recipeIds,
            )
            .match(
              _logger.error,
              (_) => emit(
                state.copyWith(
                  data: state.data.mapData(
                    (CartStateData data) => data.copyWith(
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

  void openSingleRecipe({required final String recipeId}) =>
      _navigationService.navigateToNamed(
        uri: NavigationServiceUris.singleRecipe(recipeId: recipeId),
      );

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
              onPressed: _persistenceService
                  .deleteTicketOffIngredientsOfRecipe(recipeId: recipeId)
                  .match(
                    _logger.error,
                    (_) => emit(
                      state.copyWith(
                        data: state.data.mapData(
                          (CartStateData data) => data.copyWith(
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
              onPressed: _persistenceService
                  .deleteRecipe(recipeId: recipeId)
                  .match(
                    _logger.error,
                    (_) => emit(
                      state.copyWith(
                        data: state.data.mapData(
                          (CartStateData data) => data.copyWith(
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

  void setActiveSorting({
    required final CartStateSorting sorting,
  }) {
    unawaited(
      state.data.map(
        data: (_) async => await _.data.sorting
            .map(
              unit: (final _) => sorting.map(
                unit: (final CartStateSortingSelectedUnit unitSorting) =>
                    _persistenceService.saveSorting(
                  sorting:
                      CartPersistenceServiceModelActiveSorting.selectedUnit(
                    activeSortingUnitId: unitSorting.active.id,
                    ingredientIds: unitSorting.ingredientIds,
                  ),
                ),
                custom: (final CartStateSortingCustom custom) =>
                    _persistenceService.saveSorting(
                  sorting: CartPersistenceServiceModelActiveSorting.custom(
                    ingredientIds: custom.ingredientIds,
                  ),
                ),
              ),
              custom: (final CartStateSortingCustom custom) => sorting.map(
                unit: (final CartStateSortingSelectedUnit unitSorting) =>
                    _persistenceService.saveSorting(
                  sorting:
                      CartPersistenceServiceModelActiveSorting.selectedUnit(
                    activeSortingUnitId: unitSorting.active.id,
                    ingredientIds: custom.ingredientIds,
                  ),
                ),
                custom: (final CartStateSortingCustom custom) =>
                    _persistenceService.saveSorting(
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

    final CartStateSorting newSorting = _readActiveSorting();
    emit(
      state.copyWith(
        data: state.data.mapData(
          (CartStateData data) => data.copyWith(
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

  void reorderIngredients({
    required final int oldIndex,
    required final int newIndex,
    required final List<CartStateIngredient> ingredients,
    required final CartStateSorting sorting,
  }) {
    sorting.map(
      unit: (final _) {},
      custom: (final CartStateSortingCustom custom) {
        final List<CartStateIngredient> ingredients2 = <CartStateIngredient>[
          ...ingredients,
        ];
        ingredients2.insert(newIndex, ingredients2.removeAt(oldIndex));
        final List<String> ingredientIds = ingredients2
            .map(
              (final CartStateIngredient ingredient) =>
                  ingredient.ingredient.ingredientId,
            )
            .toList();
        unawaited(
          _persistenceService
              .saveSorting(
                sorting: CartPersistenceServiceModelActiveSorting.custom(
                  ingredientIds: ingredientIds,
                ),
              )
              .match(
                _logger.error,
                (_) => emit(
                  state.copyWith(
                    data: state.data.mapData(
                      (CartStateData data) => data.copyWith(
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
}
