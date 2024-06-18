import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/generated/locale_keys.g.dart';
import 'package:food_client/pages/common/view_state.dart';
import 'package:food_client/pages/features/cart/cubit/cart_cubit.dart';
import 'package:food_client/pages/features/cart/cubit/cart_state.dart';
import 'package:food_client/pages/features/cart/widgets/cart_view_recipe_list_delegate.dart';
import 'package:food_client/pages/features/cart/widgets/cart_view_single_ingredient_item.dart';
import 'package:food_client/pages/features/cart/widgets/cart_view_sorting_card.dart';
import 'package:food_client/pages/features/cart/widgets/cart_view_star_icon.dart';
import 'package:food_client/pages/features/cart/widgets/cart_view_tab_bar.dart';

class RecipeListSliver extends StatelessWidget {
  const RecipeListSliver({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<CartCubit, CartState>(
        builder: (BuildContext context, CartState state) => NestedScrollView(
          headerSliverBuilder: (_, __) => <Widget>[
            if (state.data.map(
              data: (ViewStateData<CartStateData> data) =>
                  data.data.ingredients.isEmpty,
              error: (_) => true,
              loading: (_) => true,
            ))
              const SliverToBoxAdapter()
            else
              SliverPersistentHeader(
                floating: false,
                pinned: true,
                delegate: RecipesListDelegate(
                  extendedHeight: MediaQuery.of(context).size.height * 0.24,
                  collapsedHeight: MediaQuery.of(context).size.height * 0.16,
                  length: (state.data as ViewStateData<CartStateData>)
                      .data
                      .recipes
                      .length,
                ),
              ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton.icon(
                      onPressed: () => context
                          .read<CartCubit>()
                          .openModalBottomSheet(
                            child: _SortingModalBottomSheet(
                              sortingUnits:
                                  (state.data as ViewStateData<CartStateData>)
                                      .data
                                      .sortingUnits,
                              sorting:
                                  (state.data as ViewStateData<CartStateData>)
                                      .data
                                      .sorting,
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
          body: state.data.map(
            data: (ViewStateData<CartStateData> data) => TabBarView(
              children: <Widget>[
                _IngredientsListView(
                  ingredients: data.data.ingredients,
                  keyId: 'total',
                  sorting: data.data.sorting,
                ),
                _IngredientsListView(
                  ingredients: data.data.ingredients
                      .where(
                        (final CartStateIngredient element) =>
                            !element.isTickedOff,
                      )
                      .toList(),
                  keyId: 'missing',
                  sorting: data.data.sorting,
                ),
                _IngredientsListView(
                  ingredients: data.data.ingredients
                      .where(
                        (final CartStateIngredient element) =>
                            element.isTickedOff,
                      )
                      .toList(),
                  keyId: 'ticked-off',
                  sorting: data.data.sorting,
                ),
              ],
            ),
            error: (_) => const SizedBox.shrink(),
            loading: (_) => const SizedBox.shrink(),
          ),
        ),
      );
}

class _SortingModalBottomSheet extends StatelessWidget {
  final List<CartStateSortingUnit> sortingUnits;
  final CartStateSorting sorting;
  const _SortingModalBottomSheet({
    super.key,
    required this.sortingUnits,
    required this.sorting,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(16),
        child: BlocBuilder<CartCubit, CartState>(
          builder: (BuildContext context, _) => GridView.count(
            crossAxisCount: 3,
            children: <Widget>[
              ...sortingUnits.map(
                (final CartStateSortingUnit ingredientUnit) => Stack(
                  children: <Widget>[
                    CartViewSortingCard(
                      sorting: CartStateSorting.unit(
                        active: ingredientUnit,
                        ingredientIds: sorting.ingredientIds,
                      ),
                      onTap: () => context.read<CartCubit>().setActiveSorting(
                            sorting: CartStateSorting.unit(
                              ingredientIds: sorting.ingredientIds,
                              active: ingredientUnit,
                            ),
                          ),
                    ),
                    CartViewStarIcon(
                      sorting: CartStateSorting.unit(
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
                    sorting: CartStateSorting.custom(
                      ingredientIds: sorting.ingredientIds,
                    ),
                    onTap: () => context.read<CartCubit>().setActiveSorting(
                          sorting: CartStateSorting.custom(
                            ingredientIds: sorting.ingredientIds,
                          ),
                        ),
                  ),
                  CartViewStarIcon(
                    sorting: CartStateSorting.custom(
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

class _IngredientsListView extends StatelessWidget {
  final List<CartStateIngredient> ingredients;
  final String keyId;
  final CartStateSorting sorting;

  const _IngredientsListView({
    super.key,
    required this.ingredients,
    required this.keyId,
    required this.sorting,
  });
  @override
  Widget build(BuildContext context) => Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: BlocBuilder<CartCubit, CartState>(
          builder: (BuildContext cartCubitContext, CartState state) =>
              ReorderableListView.builder(
            key: PageStorageKey<String>(
              'cart_view-ingredients-list-$keyId',
            ),
            itemCount: ingredients.length,
            buildDefaultDragHandles: false,
            onReorder: (final int oldIndex, final int newIndex) {
              cartCubitContext.read<CartCubit>().reorderIngredients(
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
}
