import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/commons/utils.dart';
import 'package:food_client/pages/common/view_state.dart';
import 'package:food_client/pages/common/widgets.dart';
import 'package:food_client/pages/features/cart/cubit/cart_cubit.dart';
import 'package:food_client/pages/features/cart/cubit/cart_state.dart';
import 'package:fpdart/fpdart.dart';

class CardElementWidget extends StatelessWidget {
  final double height;
  final int index;

  const CardElementWidget({
    super.key,
    required this.height,
    required this.index,
  });
  @override
  Widget build(BuildContext context) => BlocBuilder<CartCubit, CartState>(
        builder: (BuildContext context, CartState state) => SizedBox(
          width: height * 0.75,
          child: Card(
            color: generateRandomPastelColor(
              seed: (state.data as ViewStateData<CartStateData>)
                  .data
                  .recipes[index]
                  .recipeId
                  .hashCode,
              brightness: Theme.of(context).brightness,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () => context.read<CartCubit>().openSingleRecipe(
                      recipeId: (state.data as ViewStateData<CartStateData>)
                          .data
                          .recipes[index]
                          .recipeId,
                    ),
                onLongPress: () =>
                    context.read<CartCubit>().showDeleteRecipeDialog(
                          recipeId: (state.data as ViewStateData<CartStateData>)
                              .data
                              .recipes[index]
                              .recipeId,
                        ),
                child: Stack(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        _CardImage(
                          imageUrl: (state.data as ViewStateData<CartStateData>)
                              .data
                              .recipes[index]
                              .imageUrl,
                        ),
                        _Cardtext(
                          title: (state.data as ViewStateData<CartStateData>)
                              .data
                              .recipes[index]
                              .title,
                        ),
                      ],
                    ),
                    _ServingsChip(
                      serving: (state.data as ViewStateData<CartStateData>)
                          .data
                          .recipes[index]
                          .serving,
                    ),
                  ],
                ),
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
