import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/commons/utils.dart';
import 'package:food_client/pages/common/widgets.dart';
import 'package:food_client/pages/features/cart/cubit/cart_cubit.dart';
import 'package:food_client/pages/features/cart/cubit/cart_state.dart';

class CartViewSingleIngredientItem extends StatelessWidget {
  final List<String> recipeIds;
  final int listIndex;
  final bool showDragHandle;
  final CartStateIngredient ingredient;

  const CartViewSingleIngredientItem({
    super.key,
    required this.recipeIds,
    required this.listIndex,
    required this.showDragHandle,
    required this.ingredient,
  });

  @override
  Widget build(BuildContext context) => Material(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: InkWell(
            borderRadius: BorderRadius.circular(8),
            onTap: () => context.read<CartCubit>().tickOff(
                  ingredientId: ingredient.ingredient.ingredientId,
                  recipeIds: recipeIds,
                  isTickedOff: !ingredient.isTickedOff,
                ),
            child: Ink(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: !ingredient.isTickedOff && recipeIds.length == 1
                    ? generateRandomPastelColor(
                        seed: recipeIds.first.hashCode,
                        brightness: Theme.of(context).brightness,
                      )
                    : null,
                gradient: !ingredient.isTickedOff && recipeIds.length > 1
                    ? LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: recipeIds
                            .map(
                              (final String recipeId) =>
                                  generateRandomPastelColor(
                                seed: recipeId.hashCode,
                                brightness: Theme.of(context).brightness,
                              ),
                            )
                            .toList(),
                      )
                    : null,
              ),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                enabled: !ingredient.isTickedOff,
                leading: AspectRatio(
                  aspectRatio: 1,
                  child: ingredient.ingredient.imageUrl.fold(
                    () => const Icon(Icons.image_not_supported),
                    (final Uri url) => buildCachedNetworkImage(imageUrl: url),
                  ),
                ),
                title: Text(ingredient.ingredient.displayedName),
                subtitle: Text(
                  '${ingredient.ingredient.amount.fold(
                    () => '',
                    (final double amount) => amount.toStringAsFixed(0),
                  )} ${ingredient.ingredient.unit.getOrElse(() => '')}',
                ),
                trailing: showDragHandle
                    ? ReorderableDragStartListener(
                        index: listIndex,
                        child: const Icon(Icons.drag_handle),
                      )
                    : null,
              ),
            ),
          ),
        ),
      );
}
