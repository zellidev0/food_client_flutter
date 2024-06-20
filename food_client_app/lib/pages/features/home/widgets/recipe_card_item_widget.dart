import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/pages/common/view_state.dart';
import 'package:food_client/pages/common/widgets.dart';
import 'package:food_client/pages/features/home/cubit/home_cubit.dart';
import 'package:food_client/pages/features/home/cubit/home_state.dart';
import 'package:food_client/pages/features/home/widgets/recipe_card_item_description_widget.dart';
import 'package:fpdart/fpdart.dart';

class RecipeCardItemWidget extends StatelessWidget {
  final HomeStateRecipe recipe;
  final List<HomeStateFilterCuisine> cuisines;
  const RecipeCardItemWidget({
    super.key,
    required this.cuisines,
    required this.recipe,
  });

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
                          imageUrl: recipe.imageUri,
                        ),
                      ),
                      ...context.read<HomeCubit>().state.availableFilters.map(
                            data: (ViewStateData<List<HomeStateFilter>> data) =>
                                <Widget>[
                              RecipeCardItemDescriptionWidget(
                                recipe: recipe,
                                tags: data.data
                                    .whereType<HomeStateFilterTag>()
                                    .toList(),
                              ),
                              RecipeCardItemDescriptionWidget(
                                recipe: recipe,
                                tags: data.data
                                    .whereType<HomeStateFilterTag>()
                                    .toList(),
                              ),
                            ],
                            error: (_) => <Widget>[],
                            loading: (_) => <Widget>[
                              const Center(child: CircularProgressIndicator()),
                            ],
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
                child: cuisines
                    .filter(
                      (final HomeStateFilterCuisine element) =>
                          recipe.cuisineIds.contains(element.id),
                    )
                    .map<Widget>(
                      (final HomeStateFilterCuisine tag) => Chip(
                        label: Text(tag.displayedName),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                    )
                    .firstOption
                    .getOrElse(() => const SizedBox.shrink()),
              ),
            ),
            Positioned.fill(
              child: Material(
                type: MaterialType.transparency,
                child: InkWell(
                  borderRadius: BorderRadius.circular(24),
                  onTap: () => context.read<HomeCubit>().goToSingleRecipeView(
                        recipeId: recipe.id,
                        recipeTitle: recipe.displayedAttributes.name,
                        imagePath: recipe.imageUri,
                      ),
                  child: Container(),
                ),
              ),
            ),
          ],
        ),
      );
}
