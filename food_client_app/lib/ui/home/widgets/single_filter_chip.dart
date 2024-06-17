import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/commons/view_state.dart';
import 'package:food_client/generated/locale_keys.g.dart';
import 'package:food_client/ui/home/home_controller.dart';
import 'package:food_client/ui/home/home_model.dart';
import 'package:food_client/ui/home/home_providers.dart';
import 'package:food_client/ui/home/widgets/filter_dialog.dart';

class SingleFilterChip<T extends HomeModelFilter> extends ConsumerWidget {
  const SingleFilterChip({
    super.key,
    required this.label,
    required this.controller,
  });

  final String label;
  final HomeController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) =>
      ref.watch(homeModelFiltersProvider).map(
            data: (ViewStateData<List<HomeModelFilter>> value) {
              final List<T> filters = value.data
                  .whereType<T>()
                  .where((final HomeModelFilter filter) => filter.isSelected)
                  .toList();
              return FilterChip(
                label: Text(
                  filters.isEmpty
                      ? label
                      : LocaleKeys.ui_home_view_filters_name_with_amount.tr(
                          namedArgs: <String, String>{
                            'name': label,
                            'amount': filters.length.toString(),
                          },
                        ),
                ),
                selected: filters.isNotEmpty,
                onSelected: (_) => controller.openDialog(
                  child: FilterDialog(
                    onTap: controller.setFiltersSelected,
                    allFilters: value.data.whereType<T>().toList(),
                  ),
                ),
              );
            },
            error: (_) => const SizedBox.shrink(),
            loading: (_) => const SizedBox.shrink(),
          );
}
