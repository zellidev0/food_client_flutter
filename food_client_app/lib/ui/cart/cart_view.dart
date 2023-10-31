import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/commons/utils.dart';
import 'package:food_client/commons/widgets.dart';
import 'package:food_client/mvc.dart';
import 'package:food_client/my_scaffold.dart';
import 'package:food_client/ui/cart/cart_model.dart';
import 'package:food_client/ui/cart/widgets/car_view_tab_bar.dart';
import 'package:food_client/ui/cart/widgets/cart_view_recipe_list_delegate.dart';

class CartView extends MvcView<CartController, CartModel> {
  const CartView({
    required super.controller,
    required super.model,
    super.key,
  });

  @override
  Widget build(final BuildContext context) => MyScaffold<CartModelData>(
        errorText: 'ui.cart_view.error_states.general_error'.tr(),
        state: model.data,
        child: (CartModelData modelData) => buildContent(model: modelData),
      );

  Widget buildContent({required CartModelData model}) => DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (final _, final __) => <Widget>[
            if (model.recipes.isEmpty)
              const SliverToBoxAdapter()
            else
              _buildRecipeListSliver(
                model: model,
                controller: controller,
              ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton.icon(
                      onPressed: () => controller.openModalBottomSheet(
                        child: buildSortingModalBottomSheetWidget(
                          sortingUnits: model.sortingUnits,
                          sorting: model.sorting,
                        ),
                      ),
                      icon: const Icon(Icons.sort),
                      label: const Text(
                        'ui.cart_view.modals.sorting_modal.button_text',
                      ).tr(),
                    ),
                  ],
                ),
              ),
            ),
            const MyTabBarSliver(),
          ],
          body: model.recipes.isEmpty
              ? buildNoItemsFoundIcon(
                  message: 'ui.cart_view.empty_states.empty_cart'.tr(),
                )
              : TabBarView(
                  children: <Widget>[
                    buildIngredientsListView(
                      ingredients: model.ingredients,
                      keyId: 'total',
                      controller: controller,
                      sorting: model.sorting,
                    ),
                    buildIngredientsListView(
                      ingredients: model.ingredients
                          .where(
                            (final CartModelIngredient element) =>
                                !element.isTickedOff,
                          )
                          .toList(),
                      keyId: 'missing',
                      controller: controller,
                      sorting: model.sorting,
                    ),
                    buildIngredientsListView(
                      ingredients: model.ingredients
                          .where(
                            (final CartModelIngredient element) =>
                                element.isTickedOff,
                          )
                          .toList(),
                      keyId: 'ticked-off',
                      controller: controller,
                      sorting: model.sorting,
                    ),
                  ],
                ),
        ),
      );

  Widget buildIngredientsListView({
    required final List<CartModelIngredient> ingredients,
    required final String keyId,
    required final CartController controller,
    required final CartModelSorting sorting,
  }) =>
      Builder(
        builder: (final BuildContext context) => Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.transparent,
            shadowColor: Colors.transparent,
          ),
          child: ReorderableListView.builder(
            key: PageStorageKey<String>(
              'cart_view-ingredients-list-$keyId',
            ),
            itemCount: ingredients.length,
            buildDefaultDragHandles: false,
            onReorder: (final int oldIndex, final int newIndex) {
              controller.reorderIngredients(
                ingredients: ingredients,
                sorting: sorting,
                oldIndex: oldIndex,
                newIndex: newIndex,
              );
            },
            itemBuilder: (final BuildContext context, final int index) =>
                buildSingleIngredientItem(
              ingredient: ingredients[index],
              controller: controller,
              recipeIds: ingredients[index].ingredient.recipeIds,
              listIndex: index,
              showDragHandle: sorting.map(
                unit: (final _) => false,
                custom: (final _) => true,
              ),
            ),
          ),
        ),
      );

  Widget _buildRecipeListSliver({
    required final CartModelData model,
    required final CartController controller,
  }) =>
      Builder(
        builder: (final BuildContext context) => SliverPersistentHeader(
          floating: false,
          pinned: true,
          delegate: RecipesListDelegate(
            model: model,
            controller: controller,
            extendedHeight: MediaQuery.of(context).size.height * 0.24,
            collapsedHeight: MediaQuery.of(context).size.height * 0.16,
          ),
        ),
      );

  Widget buildSingleIngredientItem({
    required final List<String> recipeIds,
    required final int listIndex,
    required final bool showDragHandle,
    required final CartModelIngredient ingredient,
    required final CartController controller,
  }) =>
      Material(
        key: ValueKey<String>(listIndex.toString()),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Builder(
            builder: (final BuildContext context) => InkWell(
              borderRadius: BorderRadius.circular(8),
              onTap: () async => await controller.tickOff(
                ingredientId: ingredient.ingredient.ingredientId,
                recipeIds: recipeIds,
                isTickedOff: !ingredient.isTickedOff,
              ),
              child: Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: !ingredient.isTickedOff && recipeIds.length == 1
                      ? generateRandomPastelColor(
                          seed: recipeIds.first.hashCode,
                          brightness: Theme.of(context).brightness,
                        )
                      : null,
                  gradient: !ingredient.isTickedOff && recipeIds.length > 1
                      ? LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: recipeIds
                              .map(
                                (final String recipeId) =>
                                    generateRandomPastelColor(
                                  seed: recipeId.hashCode,
                                  brightness: Theme.of(context).brightness,
                                ),
                              )
                              .toList(),
                        )
                      : null,
                ),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  enabled: !ingredient.isTickedOff,
                  leading: AspectRatio(
                    aspectRatio: 1,
                    child: ingredient.ingredient.imageUrl.fold(
                      () => const Icon(Icons.image_not_supported),
                      (final Uri url) => buildCachedNetworkImage(imageUrl: url),
                    ),
                  ),
                  title: Text(ingredient.ingredient.displayedName),
                  subtitle: Text(
                    '${ingredient.ingredient.amount.fold(
                      () => '',
                      (final double amount) => amount.toStringAsFixed(0),
                    )} ${ingredient.ingredient.unit.getOrElse(() => '')}',
                  ),
                  trailing: showDragHandle
                      ? ReorderableDragStartListener(
                          index: listIndex,
                          child: const Icon(Icons.drag_handle),
                        )
                      : null,
                ),
              ),
            ),
          ),
        ),
      );

  Widget buildSortingModalBottomSheetWidget({
    required final List<CartModelSortingUnit> sortingUnits,
    required final CartModelSorting sorting,
  }) =>
      Padding(
        padding: const EdgeInsets.all(16),
        child: Consumer(
          builder: (final _, final WidgetRef ref, final __) => GridView.count(
            crossAxisCount: 3,
            children: <Widget>[
              ...sortingUnits.map(
                (final CartModelSortingUnit ingredientUnit) => Stack(
                  children: <Widget>[
                    buildCard(
                      sorting: CartModelSorting.unit(
                        active: ingredientUnit,
                        ingredientIds: sorting.ingredientIds,
                      ),
                      onTap: () {
                        controller.setActiveSorting(
                          sorting: CartModelSorting.unit(
                            ingredientIds: sorting.ingredientIds,
                            active: ingredientUnit,
                          ),
                        );
                      },
                    ),
                    buildStarIcon(
                      sorting: CartModelSorting.unit(
                        active: ingredientUnit,
                        ingredientIds: sorting.ingredientIds,
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                children: <Widget>[
                  buildCard(
                    sorting: CartModelSorting.custom(
                      ingredientIds: sorting.ingredientIds,
                    ),
                    onTap: () {
                      controller.setActiveSorting(
                        sorting: CartModelSorting.custom(
                          ingredientIds: sorting.ingredientIds,
                        ),
                      );
                    },
                  ),
                  buildStarIcon(
                    sorting: CartModelSorting.custom(
                      ingredientIds: sorting.ingredientIds,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}

SizedBox buildCard({
  required final CartModelSorting sorting,
  required final VoidCallback onTap,
}) =>
    SizedBox.expand(
      child: Card(
        child: Consumer(
          builder: (final _, final WidgetRef ref, final __) => InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  sorting.map(
                    unit: (final _) => Icons.shopping_basket,
                    custom: (final _) => Icons.list,
                  ),
                ),
                Text(
                  sorting.map(
                    unit: (final CartModelSortingSelectedUnit unit) =>
                        unit.active.name,
                    custom: (final CartModelSortingCustom custom) => 'Custom',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

Widget buildStarIcon({
  required final CartModelSorting sorting,
}) =>
    IgnorePointer(
      child: Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Consumer(
            builder:
                (final BuildContext context, final WidgetRef ref, final __) =>
                    Icon(
              Icons.star,
              color: sorting.map(
                unit: (final CartModelSortingSelectedUnit selectedUnit) =>
                    sorting.map(
                  unit: (final CartModelSortingSelectedUnit unit) =>
                      unit.active.id == selectedUnit.active.id,
                  custom: (final CartModelSortingCustom custom) => false,
                ),
                custom: (final _) => sorting.map(
                  unit: (final _) => false,
                  custom: (final _) => true,
                ),
              )
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ),
      ),
    );

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
