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
        buildWhen: (CartState previous, CartState current) =>
            previous.runtimeType != current.runtimeType,
        builder: (BuildContext context, CartState state) => NestedScrollView(
          headerSliverBuilder: (_, __) => state.data.map(
            data: (ViewStateData<CartStateData> data) => <Widget>[
              if (data.data.ingredients.isEmpty)
              const SliverToBoxAdapter()
            else
              SliverPersistentHeader(
                floating: false,
                pinned: true,
                delegate: RecipesListDelegate(
                  extendedHeight: MediaQuery.of(context).size.height * 0.24,
                  collapsedHeight: MediaQuery.of(context).size.height * 0.16,
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
                                sortingUnits: data.data.sortingUnits,
                                sorting: data.data.sorting,
                                setActiveSorting: ({
                                  required final CartStateSorting sorting,
                                }) =>
                                    context.read<CartCubit>().setActiveSorting(
                                          sorting: sorting,
                                        ),
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
            error: (_) => const <Widget>[],
            loading: (_) =>
                const <Widget>[Center(child: CircularProgressIndicator())],
          ),
          body: state.data.map(
            data: (ViewStateData<CartStateData> data) =>
                BlocBuilder<CartCubit, CartState>(
              builder: (BuildContext context, CartState state) =>
                  state.data.map(
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
            error: (_) => const SizedBox.shrink(),
            loading: (_) => const SizedBox.shrink(),
          ),
        ),
      );
}
