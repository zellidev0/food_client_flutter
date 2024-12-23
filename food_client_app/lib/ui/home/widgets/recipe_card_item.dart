import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/commons/widgets.dart';
import 'package:food_client/ui/home/home_controller_implementation.dart';
import 'package:food_client/ui/home/home_model.dart';
import 'package:food_client/ui/home/widgets/recipe_card_item_description.dart';
import 'package:food_client/ui/home/widgets/recipe_card_tag.dart';

class RecipeCardItem extends StatefulWidget {
  final HomeModelRecipe recipe;
  final VoidCallback onTap;

  const RecipeCardItem({
    super.key,
    required this.recipe,
    required this.onTap,
  });

  @override
  State<RecipeCardItem> createState() => _RecipeCardItemState();
}

class _RecipeCardItemState extends State<RecipeCardItem> {
  @override
  Widget build(final BuildContext context) => Padding(
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
                      BlocBuilder<HomeControllerImplementation, HomeModel>(
                        builder: (BuildContext context, HomeModel state) =>
                            RecipeCardItemDescription(
                          recipe: widget.recipe,
                          initialTags: state.filters
                              .map(
                                data: (_) => _.data,
                                error: (_) => <HomeModelFilter>[],
                                loading: (_) => <HomeModelFilter>[],
                              )
                              .whereType<HomeModelFilterTag>()
                              .toList(),
                        ),
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
                child: BlocBuilder<HomeControllerImplementation, HomeModel>(
                  builder: (BuildContext context, HomeModel state) => Wrap(
                    children: state.filters
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
