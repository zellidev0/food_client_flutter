import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/pages/features/single_recipe/cubit/single_recipe_cubit.dart';
import 'package:food_client/pages/features/single_recipe/cubit/single_recipe_state.dart';
import 'package:fpdart/fpdart.dart';

class TabIngredientsWidget extends StatelessWidget {
  final Option<int> selectedYield;
  final List<SingleRecipeStateYield> yields;
  final String recipeId;
  const TabIngredientsWidget({
    super.key,
    required this.selectedYield,
    required this.yields,
    required this.recipeId,
  });

  @override
  Widget build(BuildContext context) {
    final int index = (yields.indexWhere(
              (final SingleRecipeStateYield yield) =>
                  some(yield.servings) == selectedYield,
            ) +
            1) %
        yields.length;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton.icon(
          onPressed: () {
            context.read<SingleRecipeCubit>().setSelectedYield(
                  yield: yields
                      .map(
                        (final SingleRecipeStateYield yield) => yield.servings,
                      )
                      .toList()[index],
                  recipeId: recipeId,
                );
          },
          icon: yields.toList().length < 2
              ? const Icon(Icons.group)
              : (yields.toList().length - index != yields.toList().length
                  ? const Icon(Icons.group_add)
                  : const Icon(Icons.group_remove)),
          label: Text('${selectedYield.getOrElse(() => 1)}'),
        ),
      ],
    );
  }
}
