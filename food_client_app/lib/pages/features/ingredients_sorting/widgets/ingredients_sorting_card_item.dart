import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/cubits/features/ingredients_sorting/ingredients_sorting_cubit.dart';
import 'package:food_client/cubits/features/ingredients_sorting/ingredients_sorting_state.dart';
import 'package:food_client/pages/features/ingredients_sorting/widgets/add_unit_modal_dialog.dart';
import 'package:fpdart/fpdart.dart';

final BorderRadius borderRadius = BorderRadius.circular(24);

class IngredientsSortingCardItem extends StatelessWidget {
  final Option<IngredientsSortingModelUnit> unit;
  final void Function({required IngredientsSortingModelUnit unit})
      setUnitSelected;

  const IngredientsSortingCardItem({
    super.key,
    this.unit = const None<IngredientsSortingModelUnit>(),
    required this.setUnitSelected,
  });

  @override
  Widget build(BuildContext context) => AspectRatio(
        aspectRatio: 1 / 1,
        child: Builder(
          builder: (final BuildContext context) => Card(
            color: unit.fold(
              () => Theme.of(context).colorScheme.surface,
              (final IngredientsSortingModelUnit unit) => unit.selected
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
                (final IngredientsSortingModelUnit card) =>
                    () => setUnitSelected(unit: card),
              ),
              onLongPress: unit
                  .map(
                    (final IngredientsSortingModelUnit card) => () => context
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
                      (final IngredientsSortingModelUnit card) =>
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
