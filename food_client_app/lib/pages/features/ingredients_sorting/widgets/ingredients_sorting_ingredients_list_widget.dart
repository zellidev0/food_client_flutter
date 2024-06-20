import 'package:flutter/material.dart';
import 'package:food_client/pages/common/ingredients_list.dart';
import 'package:food_client/pages/common/widgets.dart';
import 'package:food_client/pages/features/ingredients_sorting/cubit/ingredients_sorting_state.dart';

class IngredientsSortingIngredientsListWidget extends StatelessWidget {
  final void Function({
    required int newIndex,
    required int oldIndex,
    required IngredientsSortingStateUnit unit,
  }) reorder;
  final String keyId;
  final IngredientsSortingStateUnit unit;
  const IngredientsSortingIngredientsListWidget({
    super.key,
    required this.reorder,
    required this.keyId,
    required this.unit,
  });

  @override
  Widget build(BuildContext context) => Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: IngredientsList(
            keyId: 'ingredients-sorting-view-ingredients-list-$keyId',
            length: unit.sorting.length,
            reorderIngredients: (int oldIndex, int newIndex) =>
                reorder(newIndex: newIndex, oldIndex: oldIndex, unit: unit),
            itemBuilder: (final BuildContext context, final int index) =>
                ListTile(
              key: Key(unit.sorting[index].id),
              title: Text(unit.sorting[index].name),
              leading: unit.sorting[index].iconUrl.fold(
                () => const SizedBox(width: 64, height: 64),
                (final Uri imageUrl) => SizedBox(
                  width: 64,
                  height: 64,
                  child: buildCachedNetworkImage(imageUrl: imageUrl),
                ),
              ),
              trailing: ReorderableDragStartListener(
                index: index,
                child: const Icon(Icons.drag_handle),
              ),
            ),
          ),
        ),
      );
}
