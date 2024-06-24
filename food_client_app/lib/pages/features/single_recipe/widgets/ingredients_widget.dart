import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_client/pages/common/widgets.dart';
import 'package:food_client/pages/features/single_recipe/cubit/single_recipe_state.dart';
import 'package:fpdart/fpdart.dart';

class IngredientsWidget extends StatelessWidget {
  final List<SingleRecipeStateYield> yields;
  final Option<int> selectedYield;
  const IngredientsWidget({
    super.key,
    required this.yields,
    required this.selectedYield,
  });

  @override
  Widget build(BuildContext context) => optionOf(
        yields.firstWhereOrNull(
          (final SingleRecipeStateYield yield) =>
              some(yield.servings) == selectedYield,
        ),
      ).fold(
        () => throw Exception('No yield selected, not possible state reached'),
        (final SingleRecipeStateYield yield) => ListView(
          padding: const EdgeInsets.all(16).copyWith(top: 0),
          children: yield.ingredients
              .map(
                (final SingleRecipeStateIngredient ingredient) => ListTile(
                  leading: AspectRatio(
                    aspectRatio: 1,
                    child: ingredient.imageUrl.fold(
                      () => const Icon(Icons.image_not_supported),
                      (final Uri url) => buildCachedNetworkImage(
                        imageUrl: url,
                      ),
                    ),
                  ),
                  title: Text(ingredient.displayedName),
                  subtitle: Text(
                    '${ingredient.amount.fold(
                      () => '',
                      (final double amount) => '${amount.toStringAsFixed(0)} ',
                    )}${ingredient.unit.getOrElse(() => '')}',
                  ),
                ),
              )
              .toList(),
        ),
      );
}
