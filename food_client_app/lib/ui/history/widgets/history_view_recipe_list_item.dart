import 'package:flutter/material.dart';
import 'package:food_client/commons/utils.dart';
import 'package:food_client/commons/widgets.dart';
import 'package:fpdart/fpdart.dart';

class HistoryViewRecipeListItem extends StatelessWidget {
  final String recipeTitle;
  final Option<Uri> recipeImageUrl;
  final VoidCallback onTap;

  const HistoryViewRecipeListItem({
    super.key,
    required this.recipeTitle,
    required this.recipeImageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) => Material(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Builder(
            builder: (final BuildContext context) => InkWell(
              borderRadius: BorderRadius.circular(8),
              onTap: onTap,
              child: Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: generateRandomPastelColor(
                    seed: recipeTitle.hashCode,
                    brightness: Theme.of(context).brightness,
                  ),
                ),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  contentPadding: const EdgeInsets.only(right: 16),
                  minVerticalPadding: 0,
                  leading: SizedBox(
                    height: 200,
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: recipeImageUrl.fold(
                        () => const Icon(Icons.image_not_supported),
                        (final Uri url) => ClipRRect(
                          borderRadius: const BorderRadius.horizontal(
                            left: Radius.circular(8),
                          ),
                          child: buildCachedNetworkImage(imageUrl: url),
                        ),
                      ),
                    ),
                  ),
                  title: Text(recipeTitle),
                  trailing: const Icon(Icons.chevron_right),
                ),
              ),
            ),
          ),
        ),
      );
}
