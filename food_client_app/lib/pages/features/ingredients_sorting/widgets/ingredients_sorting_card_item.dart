import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/pages/features/ingredients_sorting/cubit/ingredients_sorting_cubit.dart';
import 'package:food_client/pages/features/ingredients_sorting/cubit/ingredients_sorting_state.dart';
import 'package:food_client/pages/features/ingredients_sorting/widgets/add_unit_modal_dialog.dart';
import 'package:fpdart/fpdart.dart';

final BorderRadius borderRadius = BorderRadius.circular(24);

class IngredientsSortingCardItem extends StatelessWidget {
  final Option<IngredientsSortingStateUnit> unit;
  final void Function({required IngredientsSortingStateUnit unit})
      setUnitSelected;

  const IngredientsSortingCardItem({
    super.key,
    this.unit = const None<IngredientsSortingStateUnit>(),
    required this.setUnitSelected,
  });

  @override
  Widget build(BuildContext context) => AspectRatio(
        aspectRatio: 1 / 1,
        child: Builder(
          builder: (final BuildContext context) => Card(
            color: unit.fold(
              () => Theme.of(context).colorScheme.surface,
              (final IngredientsSortingStateUnit unit) => unit.selected
                  ? Theme.of(context).colorScheme.primaryContainer
                  : Theme.of(context).colorScheme.surface,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius,
            ),
            child: InkWell(
              borderRadius: borderRadius,
              onTap: unit.fold(
                () => () => context.read<IngredientsSortingCubit>().openModal(
                      child: AddUnitModalWidget(
                        createSortingUnitCallback: (String title) => context
                            .read<IngredientsSortingCubit>()
                            .createSortingUnit(name: title),
                      ),
                    ),
                (final IngredientsSortingStateUnit card) =>
                    () => setUnitSelected(unit: card),
              ),
              onLongPress: unit
                  .map(
                    (final IngredientsSortingStateUnit card) => () => context
                        .read<IngredientsSortingCubit>()
                        .showDeleteUnitDialog(unit: card),
                  )
                  .toNullable(),
              child: ClipRRect(
                borderRadius: borderRadius,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    unit.fold(
                      () => const Icon(Icons.plus_one),
                      (final IngredientsSortingStateUnit card) =>
                          Text(card.title),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
