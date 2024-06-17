import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/generated/locale_keys.g.dart';
import 'package:food_client/ui/home/home_model.dart';
import 'package:food_client/ui/home/home_providers.dart';
import 'package:food_client/ui/home/widgets/single_filter_chip.dart';

class RecipeHeader extends ConsumerWidget {
  const RecipeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.history),
            onPressed: ref.read(homeControllerProvider).goToHistoryView,
          ),
          Expanded(child: Container()),
          SingleFilterChip<HomeModelFilterTag>(
            label: LocaleKeys.ui_home_view_filters_tags.tr(),
          ),
          const SizedBox(width: 8),
          SingleFilterChip<HomeModelFilterCuisine>(
            label: LocaleKeys.ui_home_view_filters_cuisines.tr(),
          ),
        ],
      );
}
