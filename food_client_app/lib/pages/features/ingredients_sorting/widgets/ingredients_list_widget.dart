import 'package:flutter/material.dart';
import 'package:food_client/cubits/features/ingredients_sorting/ingredients_sorting_state.dart';
import 'package:food_client/pages/common/widgets.dart';

class IngredientsListWidget extends StatelessWidget {
  final void Function({
    required int newIndex,
    required int oldIndex,
    required IngredientsSortingModelUnit unit,
  }) reorder;
  final IngredientsSortingModelUnit unit;
  const IngredientsListWidget({
    super.key,
    required this.reorder,
    required this.unit,
  });

  @override
  Widget build(BuildContext context) => Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: ReorderableListView.builder(
            itemCount: unit.sorting.length,
            buildDefaultDragHandles: true,
            onReorder: (final int oldIndex, final int newIndex) {
              reorder(
                unit: unit,
                oldIndex: oldIndex,
                newIndex: newIndex,
              );
            },
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
