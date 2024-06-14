import 'package:flutter/material.dart';
import 'package:food_client/ui/home/home_model.dart';

class FilterDialogChip extends StatefulWidget {
  const FilterDialogChip({
    super.key,
    required this.filter,
    required this.onTap,
  });

  final void Function({
    required bool isSelected,
    required String filterId,
  }) onTap;
  final HomeModelFilter filter;

  @override
  State<FilterDialogChip> createState() => _FilterDialogChipState();
}

class _FilterDialogChipState extends State<FilterDialogChip> {
  late bool _isSelected;

  @override
  void initState() {
    super.initState();
    _isSelected = widget.filter.isSelected;
  }

  @override
  Widget build(BuildContext context) => ChoiceChip(
        label: Text(
          '${widget.filter.displayedName} (${widget.filter.numberOfRecipes.fold(
            () => '',
            (final int number) => number < 1 ? '' : '$number',
          )})',
        ),
        selected: _isSelected,
        onSelected: (final bool isSelected) {
          widget.onTap(
            isSelected: isSelected,
            filterId: widget.filter.id,
          );
          setState(() {
            _isSelected = isSelected;
          });
        },
      );
}
