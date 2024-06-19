import 'package:flutter/material.dart';
import 'package:food_client/pages/home/cubit/home_state.dart';
import 'package:fpdart/fpdart.dart' hide State;

class FilterDialog extends StatefulWidget {
  final List<HomeStateFilter> filters;
  final void Function({required String filterId, required bool isSelected})
      setFiltersSelected;
  const FilterDialog({
    super.key,
    required this.filters,
    required this.setFiltersSelected,
  });

  @override
  State<StatefulWidget> createState() => _FilterDialogState();
}

class _FilterDialogState extends State<FilterDialog> {
  List<HomeStateFilter> localeFilters = <HomeStateFilter>[];

  @override
  void initState() {
    super.initState();
    localeFilters = widget.filters;
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: localeFilters
                .filter(
                  (final HomeStateFilter filter) =>
                      filter.numberOfRecipes.getOrElse(() => 0) > 0,
                )
                .map(
                  (final HomeStateFilter filter) => ChoiceChip(
                    label: Text(
                      '${filter.displayedName} (${filter.numberOfRecipes.fold(
                        () => '',
                        (final int number) => number < 1 ? '' : '$number',
                      )})',
                    ),
                    selected: filter.isSelected,
                    onSelected: (final bool selected) {
                      widget.setFiltersSelected(
                        filterId: filter.id,
                        isSelected: selected,
                      );
                      updateLocaleFilters(
                        filterId: filter.id,
                        isSelected: selected,
                      );
                    },
                  ),
                )
                .toList(),
          ),
        ),
      );

  void updateLocaleFilters({
    required String filterId,
    required bool isSelected,
  }) {
    setState(
      () {
        localeFilters = localeFilters
            .map(
              (final HomeStateFilter filter) => filter.id == filterId
                  ? filter.copyWith(isSelected: isSelected)
                  : filter,
            )
            .toList();
      },
    );
  }
}
