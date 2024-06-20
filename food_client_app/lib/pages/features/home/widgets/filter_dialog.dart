import 'package:flutter/material.dart';
import 'package:food_client/pages/features/home/cubit/home_state.dart';
import 'package:fpdart/fpdart.dart' hide State;

class FilterDialog extends StatefulWidget {
  final List<HomeStateFilter> filters;
  final void Function({required String filterId, required bool isSelected})
      setFiltersSelected;
  final void Function() clearFilters;
  const FilterDialog({
    super.key,
    required this.filters,
    required this.setFiltersSelected,
    required this.clearFilters,
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
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  '${localeFilters.where((final HomeStateFilter filter) => filter.isSelected).length} filters selected',
                ),
                const SizedBox(width: 16),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                    borderRadius: BorderRadius.circular(16),
                    color: Theme.of(context).colorScheme.secondaryContainer,
                  ),
                  child: TextButton(
                    onPressed: () {
                      widget.clearFilters();
                      _clearFilters();
                    },
                    child: const Text('clear all'),
                  ),
                ),
              ],
            ),
            Expanded(
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
                            _updateLocaleFilters(
                              filterId: filter.id,
                              isSelected: selected,
                            );
                          },
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      );

  void _updateLocaleFilters({
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

  void _clearFilters() {
    setState(
      () {
        localeFilters = localeFilters
            .map(
              (final HomeStateFilter filter) =>
                  filter.copyWith(isSelected: false),
            )
            .toList();
      },
    );
  }
}
