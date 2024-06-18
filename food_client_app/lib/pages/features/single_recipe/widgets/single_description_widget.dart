import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:food_client/cubits/features/single_recipe/single_recipe_state.dart';
import 'package:food_client/pages/common/widgets.dart';

class SingleDescriptionWidget extends StatelessWidget {
  final SingleRecipeStateStep step;
  final int index;
  const SingleDescriptionWidget({
    super.key,
    required this.step,
    required this.index,
  });

  @override
  Widget build(BuildContext context) => Card(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 1.5 / 1,
                  child: step.imageUrl.fold(
                    () => const Icon(Icons.image_not_supported),
                    (final Uri url) => ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                      child: buildCachedNetworkImage(imageUrl: url),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Chip(
                    label: Text((index + 1).toString()),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: MarkdownBody(
                data: step.instructionMarkdown,
                shrinkWrap: true,
              ),
            ),
          ],
        ),
      );
}
