import 'package:flutter/material.dart';
import 'package:food_client/pages/home/cubit/home_state.dart';
import 'package:fpdart/fpdart.dart';

class RecipeCardItemDescriptionWidget extends StatelessWidget {
  final HomeStateRecipe recipe;
  final List<HomeStateFilterTag> tags;

  const RecipeCardItemDescriptionWidget({
    super.key,
    required this.recipe,
    required this.tags,
  });

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
            title: Text(recipe.displayedAttributes.name),
            subtitle: Text(recipe.displayedAttributes.headline),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Wrap(
              spacing: 4,
              runSpacing: 4,
              children: tags
                  .filter(
                    (final HomeStateFilterTag element) =>
                        recipe.tagIds.contains(element.id),
                  )
                  .map(
                    (final HomeStateFilterTag tag) => SizedBox(
                      height: 24,
                      child: FittedBox(
                        child: Chip(
                          label: Text(tag.displayedName),
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      );
}
