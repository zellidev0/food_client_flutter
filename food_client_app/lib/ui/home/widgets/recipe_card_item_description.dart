import 'package:flutter/material.dart';
import 'package:food_client/ui/home/home_model.dart';
import 'package:food_client/ui/home/widgets/recipe_card_tag.dart';

class RecipeCardItemDescription extends StatefulWidget {
  const RecipeCardItemDescription({
    super.key,
    required this.recipe,
    required this.initialTags,
  });

  final HomeModelRecipe recipe;
  final List<HomeModelFilterTag> initialTags;

  @override
  State<RecipeCardItemDescription> createState() =>
      _RecipeCardItemDescriptionState();
}

class _RecipeCardItemDescriptionState extends State<RecipeCardItemDescription> {
  late List<Widget> tags;

  @override
  void initState() {
    super.initState();
    tags = widget.initialTags
        .where(
          (final HomeModelFilterTag element) =>
              widget.recipe.tagIds.contains(element.id),
        )
        .map(
          (final HomeModelFilterTag tag) => RecipeCardTag(
            displayedName: tag.displayedName,
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
            title: Text(widget.recipe.displayedAttributes.name),
            subtitle: Text(widget.recipe.displayedAttributes.headline),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Wrap(
              spacing: 4,
              runSpacing: 4,
              children: tags,
            ),
          ),
        ],
      );
}
