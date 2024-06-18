import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:food_client/cubits/features/single_recipe/single_recipe_state.dart';
import 'package:food_client/pages/features/single_recipe/widgets/tab_ingredients_widget.dart';
import 'package:fpdart/fpdart.dart';

class CookingDetailsWidget extends StatelessWidget {
  final int difficulty;
  final Option<Duration> totalCookingTime;
  final Option<int> selectedYield;
  final List<SingleRecipeStateYield> yields;
  final String recipeId;

  const CookingDetailsWidget({
    super.key,
    required this.difficulty,
    required this.totalCookingTime,
    required this.selectedYield,
    required this.yields,
    required this.recipeId,
  });

  @override
  Widget build(BuildContext context) => Row(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                const Icon(Icons.hardware),
                Text(
                  () {
                    switch (difficulty) {
                      case 1:
                        return 'ui.single_recipe_view.difficulty.easy'.tr();
                      case 2:
                        return 'ui.single_recipe_view.difficulty.medium'.tr();
                      case 3:
                        return 'ui.single_recipe_view.difficulty.hard'.tr();
                      default:
                        return '-';
                    }
                  }.call(),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabIngredientsWidget(
              selectedYield: selectedYield,
              yields: yields,
              recipeId: recipeId,
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                const Icon(Icons.timelapse),
                Text(
                  totalCookingTime.fold(
                    () => '-',
                    (final Duration duration) => '${duration.inMinutes} min',
                  ),
                ),
              ],
            ),
          ),
        ],
      );
}
