import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/generated/locale_keys.g.dart';
import 'package:food_client/pages/common/view_state.dart';
import 'package:food_client/pages/features/cart/cubit/cart_cubit.dart';
import 'package:food_client/pages/features/cart/cubit/cart_state.dart';
import 'package:food_client/pages/features/cart/widgets/cart_view_recipe_list_delegate.dart';
import 'package:food_client/pages/features/cart/widgets/cart_view_tab_bar.dart';
import 'package:food_client/pages/features/cart/widgets/ingredients_list_widget.dart';
import 'package:food_client/pages/features/cart/widgets/sorting_modal_bottom_sheet.dart';

class RecipeListSliver extends StatelessWidget {
  const RecipeListSliver({super.key});

  @override
  Widget build(BuildContext context) => NestedScrollView(
        headerSliverBuilder: (_, __) => <Widget>[
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
                  BlocBuilder<CartCubit, CartState>(
                    builder: (BuildContext context, CartState state) =>
                        state.data.maybeWhen(
                      data: (CartStateData data) => TextButton.icon(
                        onPressed: () async => context
                            .read<CartCubit>()
                            .openModalBottomSheet(
                              child: SortingModalBottomSheet(
                                sortingUnits: data.sortingUnits,
                                sorting: data.sorting,
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
                      orElse: () => const SizedBox.shrink(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const MyTabBarSliver(),
        ],
        body: BlocBuilder<CartCubit, CartState>(
          builder: (BuildContext context, CartState state) => state.data.map(
            data: (ViewStateData<CartStateData> data) => TabBarView(
              children: <Widget>[
                IngredientsListWidget(
                  ingredients: data.data.ingredients,
                  keyId: 'total',
                  sorting: data.data.sorting,
                ),
                IngredientsListWidget(
                  ingredients: data.data.ingredients
                      .where(
                        (final CartStateIngredient element) =>
                            !element.isTickedOff,
                      )
                      .toList(),
                  keyId: 'missing',
                  sorting: data.data.sorting,
                ),
                IngredientsListWidget(
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
