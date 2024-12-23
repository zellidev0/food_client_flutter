import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/generated/locale_keys.g.dart';
import 'package:food_client/ui/home/home_controller_implementation.dart';
import 'package:food_client/ui/home/home_model.dart';
import 'package:food_client/ui/home/widgets/single_filter_chip.dart';

class RecipeHeader extends StatelessWidget {
  const RecipeHeader({
    super.key,
  });

  @override
  Widget build(final BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.history),
            onPressed: () =>
                context.read<HomeControllerImplementation>().goToHistoryView(),
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
