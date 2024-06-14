import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:food_client/generated/locale_keys.g.dart';
import 'package:food_client/ui/home/home_controller.dart';
import 'package:food_client/ui/home/home_model.dart';
import 'package:food_client/ui/home/widgets/filter_dialog.dart';
import 'package:food_client/ui/home/widgets/single_filter_chip.dart';

class RecipeHeader extends StatelessWidget {
  const RecipeHeader({
    super.key,
    required this.controller,
    required this.filters,
  });

  final HomeController controller;
  final List<HomeModelFilter> filters;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.history),
            onPressed: controller.goToHistoryView,
          ),
          Expanded(child: Container()),
          if (filters.isNotEmpty)
            SingleFilterChip(
              label: LocaleKeys.ui_home_view_filters_tags.tr(),
              filters: filters
                  .where(
                    (final HomeModelFilter filter) =>
                        filter is HomeModelFilterTag && filter.isSelected,
                  )
                  .toList(),
              controller: controller,
              onTap: () => controller.openDialog(
                child: FilterDialog(
                  onTap: controller.setFiltersSelected,
                  allFilters: filters.whereType<HomeModelFilterTag>().toList(),
                ),
              ),
            ),
          const SizedBox(width: 8),
          if (filters.isNotEmpty)
            SingleFilterChip(
              label: LocaleKeys.ui_home_view_filters_cuisines.tr(),
              controller: controller,
              filters: filters
                  .where(
                    (final HomeModelFilter filter) =>
                        filter is HomeModelFilterCuisine && filter.isSelected,
                  )
                  .toList(),
              onTap: () => controller.openDialog(
                child: FilterDialog(
                  onTap: controller.setFiltersSelected,
                  allFilters:
                      filters.whereType<HomeModelFilterCuisine>().toList(),
                ),
              ),
            ),
        ],
      );
}
