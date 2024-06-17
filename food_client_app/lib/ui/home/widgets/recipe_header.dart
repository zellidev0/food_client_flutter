import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:food_client/generated/locale_keys.g.dart';
import 'package:food_client/ui/home/home_controller.dart';
import 'package:food_client/ui/home/home_model.dart';
import 'package:food_client/ui/home/widgets/single_filter_chip.dart';

class RecipeHeader extends StatelessWidget {
  const RecipeHeader({
    super.key,
    required this.controller,
  });

  final HomeController controller;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.history),
            onPressed: controller.goToHistoryView,
          ),
          Expanded(child: Container()),
          SingleFilterChip<HomeModelFilterTag>(
            label: LocaleKeys.ui_home_view_filters_tags.tr(),
            controller: controller,
          ),
          const SizedBox(width: 8),
          SingleFilterChip<HomeModelFilterCuisine>(
            label: LocaleKeys.ui_home_view_filters_cuisines.tr(),
            controller: controller,
          ),
        ],
      );
}
