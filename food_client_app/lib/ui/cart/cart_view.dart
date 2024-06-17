import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:food_client/generated/locale_keys.g.dart';
import 'package:food_client/my_scaffold.dart';
import 'package:food_client/pages/common/empty_view_content.dart';
import 'package:food_client/ui/cart/cart_controller.dart';
import 'package:food_client/ui/cart/cart_model.dart';
import 'package:food_client/ui/cart/widgets/cart_view_recipe_list_delegate.dart';
import 'package:food_client/ui/cart/widgets/cart_view_single_ingredient_item.dart';
import 'package:food_client/ui/cart/widgets/cart_view_sorting_card.dart';
import 'package:food_client/ui/cart/widgets/cart_view_star_icon.dart';
import 'package:food_client/ui/cart/widgets/cart_view_tab_bar.dart';

class CartView extends StatelessWidget {
  final CartController controller;
  final CartModel model;

  const CartView({
    required this.controller,
    required this.model,
    super.key,
  });

  @override
  Widget build(final BuildContext context) => MyScaffold<CartModelData>(
        errorText: LocaleKeys.ui_cart_view_error_states_general_error.tr(),
        state: model.data,
        child: (CartModelData modelData) => Padding(
          padding: const EdgeInsets.only(top: 32),
          child: buildContent(model: modelData),
        ),
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
                        LocaleKeys
                            .ui_cart_view_modals_sorting_modal_button_text,
                      ).tr(),
                    ),
                  ],
                ),
              ),
            ),
            const MyTabBarSliver(),
          ],
          body: model.recipes.isEmpty
              ? EmptyViewContent(
                  message: LocaleKeys.ui_cart_view_empty_states_empty_cart.tr(),
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
                CartViewSingleIngredientItem(
              key: ValueKey<String>(index.toString()),
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

  Widget buildSortingModalBottomSheetWidget({
    required final List<CartModelSortingUnit> sortingUnits,
    required final CartModelSorting sorting,
  }) =>
      Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.count(
          crossAxisCount: 3,
          children: <Widget>[
            ...sortingUnits.map(
              (final CartModelSortingUnit ingredientUnit) => Stack(
                children: <Widget>[
                  CartViewSortingCard(
                    sorting: CartModelSorting.unit(
                      active: ingredientUnit,
                      ingredientIds: sorting.ingredientIds,
                    ),
                    onTap: () => controller.setActiveSorting(
                      sorting: CartModelSorting.unit(
                        ingredientIds: sorting.ingredientIds,
                        active: ingredientUnit,
                      ),
                    ),
                  ),
                  CartViewStarIcon(
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
                CartViewSortingCard(
                  sorting: CartModelSorting.custom(
                    ingredientIds: sorting.ingredientIds,
                  ),
                  onTap: () => controller.setActiveSorting(
                    sorting: CartModelSorting.custom(
                      ingredientIds: sorting.ingredientIds,
                    ),
                  ),
                ),
                CartViewStarIcon(
                  sorting: CartModelSorting.custom(
                    ingredientIds: sorting.ingredientIds,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
