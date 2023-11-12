import 'package:flutter/material.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_model.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_view.dart';
import 'package:food_client/ui/ingredients_sorting/widgets/add_unit_modal_dialog.dart';
import 'package:fpdart/fpdart.dart';

final BorderRadius borderRadius = BorderRadius.circular(24);

class IngredientsSortingCardItem extends StatelessWidget {
  final IngredientsSortingController controller;
  final Option<IngredientsSortingModelUnit> unit;

  const IngredientsSortingCardItem({
    super.key,
    required this.controller,
    this.unit = const None<IngredientsSortingModelUnit>(),
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
                () => () => controller.openModal(
                      child: AddUnitModalWidget(
                        createSortingUnitCallback: (String title) =>
                            controller.createSortingUnit(name: title),
                      ),
                    ),
                (final IngredientsSortingModelUnit card) =>
                    () => controller.setUnitSelected(unit: card),
              ),
              onLongPress: unit
                  .map(
                    (final IngredientsSortingModelUnit card) =>
                        () => controller.showDeleteUnitDialog(unit: card),
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
