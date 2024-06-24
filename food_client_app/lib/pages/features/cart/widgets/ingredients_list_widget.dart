import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/commons/utils.dart';
import 'package:food_client/pages/common/ingredients_list.dart';
import 'package:food_client/pages/features/cart/cubit/cart_cubit.dart';
import 'package:food_client/pages/features/cart/cubit/cart_state.dart';
import 'package:food_client/pages/features/cart/widgets/cart_view_single_ingredient_item.dart';

class IngredientsListWidget extends StatelessWidget {
  final List<CartStateIngredient> ingredients;
  final String keyId;
  final CartStateSorting sorting;

  const IngredientsListWidget({
    super.key,
    required this.ingredients,
    required this.keyId,
    required this.sorting,
  });
  @override
  Widget build(BuildContext context) => Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: BlocBuilder<CartCubit, CartState>(
          builder: (BuildContext cartCubitContext, CartState state) =>
              IngredientsList(
            keyId: 'cart_view-ingredients-list-$keyId',
            length: ingredients.length,
            reorderIngredients: (int oldIndex, int newIndex) =>
                cartCubitContext.read<CartCubit>().reorderIngredients(
                      ingredients: ingredients,
                      sorting: sorting,
                      oldIndex: oldIndex,
                      newIndex: newIndex,
                    ),
            itemBuilder: (final BuildContext context, final int index) =>
                CartViewSingleIngredientItem(
              key: ValueKey<String>(index.toString()),
              ingredient: ingredients[index],
              recipeIds: ingredients[index].ingredient.recipeIds,
              listIndex: index,
              showDragHandle: sorting.map(
                unit: (final _) => false,
                custom: (final _) => true,
              ),
              pastelColors: ingredients[index]
                  .ingredient
                  .recipeIds
                  .map(
                    (final String recipeId) => generateRandomPastelColor(
                      seed: recipeId.hashCode,
                      brightness: Theme.of(context).brightness,
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      );
}
