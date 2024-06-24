import 'package:flutter/material.dart';
import 'package:food_client/pages/features/cart/cubit/cart_state.dart';
import 'package:food_client/pages/features/cart/widgets/cart_view_sorting_card.dart';
import 'package:food_client/pages/features/cart/widgets/cart_view_star_icon.dart';

class SortingModalBottomSheet extends StatelessWidget {
  final List<CartStateSortingUnit> sortingUnits;
  final CartStateSorting sorting;
  final void Function({required CartStateSorting sorting}) setActiveSorting;
  const SortingModalBottomSheet({
    super.key,
    required this.sortingUnits,
    required this.sorting,
    required this.setActiveSorting,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.count(
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
                    onTap: () => setActiveSorting(
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
                  onTap: () => setActiveSorting(
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
      );
}
