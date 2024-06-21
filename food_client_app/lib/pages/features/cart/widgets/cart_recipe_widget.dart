import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/commons/utils.dart';
import 'package:food_client/pages/features/cart/cubit/cart_cubit.dart';
import 'package:food_client/pages/features/cart/cubit/cart_state.dart';
import 'package:food_client/pages/features/cart/widgets/card_image.dart';
import 'package:food_client/pages/features/cart/widgets/card_text.dart';
import 'package:food_client/pages/features/cart/widgets/servings_chip.dart';

class CartRecipeWidget extends StatelessWidget {
  final double height;
  final CartStateRecipe recipe;

  const CartRecipeWidget({
    super.key,
    required this.height,
    required this.recipe,
  });
  @override
  Widget build(BuildContext context) => SizedBox(
        width: height * 0.75,
        child: Card(
          color: generateRandomPastelColor(
            seed: recipe.recipeId.hashCode,
            brightness: Theme.of(context).brightness,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: () => context.read<CartCubit>().openSingleRecipe(
                    recipeId: recipe.recipeId,
                  ),
              onLongPress: () =>
                  context.read<CartCubit>().showDeleteRecipeDialog(
                        recipeId: recipe.recipeId,
                      ),
              child: Stack(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      CardImage(imageUrl: recipe.imageUrl),
                      Cardtext(title: recipe.title),
                    ],
                  ),
                  ServingsChip(serving: recipe.serving),
                ],
              ),
            ),
          ),
        ),
      );
}
