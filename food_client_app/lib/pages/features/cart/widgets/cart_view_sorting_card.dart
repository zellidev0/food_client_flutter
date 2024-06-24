import 'package:flutter/material.dart';
import 'package:food_client/pages/features/cart/cubit/cart_state.dart';

class CartViewSortingCard extends StatelessWidget {
  final CartStateSorting sorting;
  final VoidCallback onTap;

  const CartViewSortingCard({
    super.key,
    required this.sorting,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) => SizedBox.expand(
        child: Card(
          child: InkWell(
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
                    unit: (final CartStateSortingSelectedUnit unit) =>
                        unit.active.name,
                    custom: (final CartStateSortingCustom custom) => 'Custom',
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
