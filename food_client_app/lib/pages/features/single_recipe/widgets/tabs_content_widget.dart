import 'package:flutter/material.dart';
import 'package:food_client/cubits/features/single_recipe/single_recipe_state.dart';
import 'package:food_client/pages/features/single_recipe/widgets/description_steps_tab_widget.dart';
import 'package:food_client/pages/features/single_recipe/widgets/ingredients_widget.dart';
import 'package:fpdart/fpdart.dart';

class TabsContentWidget extends StatelessWidget {
  final SingleRecipeStateRecipe recipe;
  final Option<int> selectedYield;

  const TabsContentWidget({
    super.key,
    required this.recipe,
    required this.selectedYield,
  });

  @override
  Widget build(BuildContext context) => TabBarView(
        children: <Widget>[
          IngredientsWidget(
            yields: recipe.yields,
            selectedYield: selectedYield,
          ),
          DescriptionStepsTabWidget(
            steps: recipe.steps,
          ),
        ],
      );
}
