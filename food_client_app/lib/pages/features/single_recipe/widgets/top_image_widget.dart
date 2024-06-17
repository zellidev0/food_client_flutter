import 'package:flutter/material.dart';
import 'package:food_client/cubits/features/single_recipe/single_recipe_state.dart';
import 'package:food_client/pages/common/widgets.dart';

class TopImageWidget extends StatelessWidget {
  const TopImageWidget({
    super.key,
    required this.recipe,
  });

  final SingleRecipeModel recipe;

  @override
  Widget build(BuildContext context) => recipe.imageUrl
      .map<Widget>(
        (final Uri imageUri) => buildCachedNetworkImage(
          imageUrl: imageUri,
        ),
      )
      .getOrElse(() => const Icon(Icons.image_not_supported));
}
