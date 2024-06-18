import 'package:flutter/material.dart';
import 'package:food_client/cubits/features/cart/cart_state.dart';

class CartViewStarIcon extends StatelessWidget {
  final CartStateSorting sorting;

  const CartViewStarIcon({super.key, required this.sorting});

  @override
  Widget build(BuildContext context) => IgnorePointer(
        child: Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Builder(
              builder: (final BuildContext context) => Icon(
                Icons.star,
                color: sorting.map(
                  unit: (final CartStateSortingSelectedUnit selectedUnit) =>
                      sorting.map(
                    unit: (final CartStateSortingSelectedUnit unit) =>
                        unit.active.id == selectedUnit.active.id,
                    custom: (final CartStateSortingCustom custom) => false,
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
}
