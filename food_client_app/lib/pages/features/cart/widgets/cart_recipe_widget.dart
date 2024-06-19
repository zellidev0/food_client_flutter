import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/commons/utils.dart';
import 'package:food_client/pages/common/widgets.dart';
import 'package:food_client/pages/features/cart/cubit/cart_cubit.dart';
import 'package:food_client/pages/features/cart/cubit/cart_state.dart';
import 'package:fpdart/fpdart.dart';

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
                      _CardImage(imageUrl: recipe.imageUrl),
                      _Cardtext(title: recipe.title),
                    ],
                  ),
                  _ServingsChip(serving: recipe.serving),
                ],
              ),
            ),
          ),
        ),
      );
}

class _Cardtext extends StatelessWidget {
  final String title;

  const _Cardtext({super.key, required this.title});
  @override
  Widget build(BuildContext context) => Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: AutoSizeText(
            title,
            minFontSize: 1,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      );
}

class _ServingsChip extends StatelessWidget {
  final int serving;

  const _ServingsChip({super.key, required this.serving});
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8),
        child: Align(
          alignment: Alignment.topCenter,
          child: Row(
            children: <Widget>[
              const Expanded(child: SizedBox.shrink()),
              Chip(
                label: Row(
                  children: <Widget>[
                    const Icon(Icons.group),
                    Text(serving.toString()),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}

class _CardImage extends StatelessWidget {
  final Option<Uri> imageUrl;

  const _CardImage({super.key, required this.imageUrl});
  @override
  Widget build(BuildContext context) => AspectRatio(
        aspectRatio: 1.5 / 1,
        child: imageUrl.fold(
          () => const Icon(Icons.image_not_supported),
          (final Uri url) => buildCachedNetworkImage(imageUrl: url),
        ),
      );
}
