import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/commons/widgets.dart';
import 'package:food_client/ui/home/home_model.dart';
import 'package:food_client/ui/home/home_providers.dart';
import 'package:food_client/ui/home/widgets/recipe_card_item_description.dart';
import 'package:food_client/ui/home/widgets/recipe_card_tag.dart';

class RecipeCardItem extends ConsumerStatefulWidget {
  final HomeModelRecipe recipe;
  final VoidCallback onTap;

  const RecipeCardItem({
    super.key,
    required this.recipe,
    required this.onTap,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RecipeCardItemState();
}

class _RecipeCardItemState extends ConsumerState<RecipeCardItem> {
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
                        initialTags: ref
                            .watch(homeModelFiltersProvider)
                            .map(
                              data: (_) => _.data,
                              error: (_) => <HomeModelFilter>[],
                              loading: (_) => <HomeModelFilter>[],
                            )
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
                  children: ref
                      .watch(homeModelFiltersProvider)
                      .map(
                        data: (_) => _.data,
                        error: (_) => <HomeModelFilter>[],
                        loading: (_) => <HomeModelFilter>[],
                      )
                      .whereType<HomeModelFilterCuisine>()
                      .toList()
                      .where(
                        (final HomeModelFilterCuisine element) =>
                            widget.recipe.cuisineIds.contains(element.id),
                      )
                      .map<Widget>(
                        (final HomeModelFilterCuisine tag) => RecipeCardChip(
                          displayedName: tag.displayedName,
                        ),
                      )
                      .toList(),
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
