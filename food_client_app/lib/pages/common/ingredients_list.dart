import 'package:flutter/material.dart';

class IngredientsList extends StatelessWidget {
  final String keyId;
  final int length;
  final void Function(
    int newIndex,
    int oldIndex,
  ) reorderIngredients;
  final Widget Function(BuildContext context, int index) itemBuilder;

  const IngredientsList({
    super.key,
    required this.keyId,
    required this.reorderIngredients,
    required this.itemBuilder,
    required this.length,
  });

  @override
  Widget build(BuildContext context) => ReorderableListView.builder(
        key: PageStorageKey<String>(
          keyId,
        ),
        itemCount: length,
        buildDefaultDragHandles: false,
        onReorder: reorderIngredients,
        itemBuilder: itemBuilder,
      );
}
