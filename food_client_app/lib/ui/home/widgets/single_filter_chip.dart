import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:food_client/generated/locale_keys.g.dart';
import 'package:food_client/ui/home/home_controller.dart';
import 'package:food_client/ui/home/home_model.dart';

class SingleFilterChip extends StatelessWidget {
  const SingleFilterChip({
    super.key,
    required this.label,
    required this.filters,
    required this.controller,
    required this.onTap,
  });

  final String label;
  final List<HomeModelFilter> filters;
  final HomeController controller;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => FilterChip(
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
        onSelected: (_) => onTap(),
      );
}
