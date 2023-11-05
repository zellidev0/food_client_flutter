import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_model.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_view.dart';
import 'package:fpdart/fpdart.dart';

final BorderRadius borderRadius = BorderRadius.circular(24);

class IngredientsSortingCardItem extends StatelessWidget {
  final IngredientsSortingController controller;
  final Option<IngredientsSortingModelUnit> unit;
  final Option<String> currentlyEditingUnitName;

  const IngredientsSortingCardItem({
    super.key,
    required this.controller,
    required this.currentlyEditingUnitName,
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
                      child: buildAddUnitModalContent(),
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

  Widget buildAddUnitModalContent() => Builder(
        builder: (final BuildContext context) => Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Sorting unit',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 8),
              const Text(
                'A sorting unit is used to sort all ingredients in the shopping cart according to your needs.',
              ),
              const SizedBox(height: 8),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Suparmarket name',
                ),
                onChanged: (final String value) =>
                    controller.updateCurrentEditingUnitTitle(
                  title: value.trim().isNotEmpty ? some(value) : none(),
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: currentlyEditingUnitName
                      .map(
                        (final String name) =>
                            () => controller.createSortingUnit(name: name),
                      )
                      .toNullable(),
                  child: const Padding(
                    padding: EdgeInsets.all(8),
                    child: Text('Create'),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
