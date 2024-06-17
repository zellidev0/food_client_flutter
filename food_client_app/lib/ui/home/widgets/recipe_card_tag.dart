import 'package:flutter/material.dart';

class RecipeCardChip extends StatelessWidget {
  final String displayedName;
  const RecipeCardChip({
    super.key,
    required this.displayedName,
  });

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 24,
        child: FittedBox(
          child: Chip(
            label: Text(displayedName),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
      );
}
