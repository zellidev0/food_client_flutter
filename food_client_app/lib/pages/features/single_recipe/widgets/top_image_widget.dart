import 'package:flutter/material.dart';
import 'package:food_client/pages/common/widgets.dart';
import 'package:food_client/pages/features/single_recipe/cubit/single_recipe_state.dart';

class TopImageWidget extends StatelessWidget {
  const TopImageWidget({
    super.key,
    required this.recipe,
  });

  final SingleRecipeStateRecipe recipe;

  @override
  Widget build(BuildContext context) => recipe.imageUrl
      .map<Widget>(
        (final Uri imageUri) => buildCachedNetworkImage(
          imageUrl: imageUri,
        ),
      )
      .getOrElse(() => const Icon(Icons.image_not_supported));
}
