import 'package:flutter/material.dart';
import 'package:food_client/ui/home/home_model.dart';
import 'package:food_client/ui/home/widgets/filter_dialog_chip.dart';

class FilterDialog extends StatefulWidget {
  const FilterDialog({
    super.key,
    required this.allFilters,
    required this.onTap,
  });

  final void Function({
    required bool isSelected,
    required String filterId,
  }) onTap;
  final List<HomeModelFilter> allFilters;

  @override
  State<FilterDialog> createState() => _FilterDialogState();
}

class _FilterDialogState extends State<FilterDialog> {
  late List<HomeModelFilter> filters;
  @override
  void initState() {
    super.initState();
    filters = widget.allFilters
        .where(
          (final HomeModelFilter filter) =>
              filter.numberOfRecipes.getOrElse(() => 0) > 0,
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.separated(
          itemBuilder: (BuildContext context, int index) => FilterDialogChip(
            filter: filters[index],
            onTap: widget.onTap,
          ),
          separatorBuilder: (_, __) => const SizedBox(height: 8),
          itemCount: filters.length,
        ),
      );
}
