import 'package:flutter/material.dart';
import 'package:food_client/commons/widgets.dart';
import 'package:food_client/ui/home/home_model.dart';
import 'package:food_client/ui/home/widgets/recipe_card_item_description.dart';
import 'package:food_client/ui/home/widgets/recipe_card_tag.dart';

class RecipeCardItem extends StatefulWidget {
  final HomeModelRecipe recipe;
  final List<HomeModelFilter> availableFilters;
  final List<HomeModelFilterCuisine> allCuisines;
  final VoidCallback onTap;

  const RecipeCardItem({
    super.key,
    required this.recipe,
    required this.availableFilters,
    required this.allCuisines,
    required this.onTap,
  });

  @override
  State<RecipeCardItem> createState() => _RecipeCardItemState();
}

class _RecipeCardItemState extends State<RecipeCardItem> {
  late List<Widget> cuisines;

  @override
  void initState() {
    super.initState();
    cuisines = widget.allCuisines
        .where(
          (final HomeModelFilterCuisine element) =>
              widget.recipe.cuisineIds.contains(element.id),
        )
        .map<Widget>(
          (final HomeModelFilterCuisine tag) => RecipeCardChip(
            displayedName: tag.displayedName,
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Stack(
          children: <Widget>[
            Card(
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              child: Material(
                type: MaterialType.transparency,
                color: Colors.transparent,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Column(
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 1.5 / 1,
                        child: buildCachedNetworkImage(
                          imageUrl: widget.recipe.imageUri,
                        ),
                      ),
                      RecipeCardItemDescription(
                        recipe: widget.recipe,
                        initialTags: widget.availableFilters
                            .whereType<HomeModelFilterTag>()
                            .toList(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(22),
                child: Wrap(
                  children: cuisines,
                ),
              ),
            ),
            Positioned.fill(
              child: Material(
                type: MaterialType.transparency,
                child: InkWell(
                  borderRadius: BorderRadius.circular(24),
                  onTap: widget.onTap,
                  child: Container(),
                ),
              ),
            ),
          ],
        ),
      );
}
