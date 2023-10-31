import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:food_client/commons/utils.dart';
import 'package:food_client/commons/widgets.dart';
import 'package:food_client/ui/cart/cart_model.dart';
import 'package:food_client/ui/cart/cart_view.dart';

class RecipesListDelegate extends SliverPersistentHeaderDelegate {
  final CartModelData model;
  final CartController controller;
  final double extendedHeight;
  final double collapsedHeight;

  RecipesListDelegate({
    required this.model,
    required this.controller,
    required this.extendedHeight,
    required this.collapsedHeight,
  });

  @override
  Widget build(
    final BuildContext context,
    final double shrinkOffset,
    final bool overlapsContent,
  ) {
    final double height = (extendedHeight - shrinkOffset).clamp(
      collapsedHeight,
      extendedHeight,
    );
    if (height == collapsedHeight) {
      return SizedBox(height: collapsedHeight);
    }
    return ListView.separated(
      padding: const EdgeInsets.all(16).copyWith(bottom: 12),
      scrollDirection: Axis.horizontal,
      itemBuilder: (final _, final int index) => buildCardElement(
        height: height,
        recipe: model.recipes[index],
      ),
      separatorBuilder: (final _, final __) => const SizedBox(height: 8),
      itemCount: model.recipes.length,
    );
  }

  Widget buildCardElement({
    required final double height,
    required final CartModelRecipe recipe,
  }) =>
      Builder(
        builder: (final BuildContext context) => SizedBox(
          width: height * 0.75,
          child: Card(
            color: generateRandomPastelColor(
              seed: recipe.recipeId.hashCode,
              brightness: Theme.of(context).brightness,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () => controller.openSingleRecipe(
                  recipeId: recipe.recipeId,
                ),
                onLongPress: () => controller.showDeleteRecipeDialog(
                  recipeId: recipe.recipeId,
                ),
                child: Stack(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        _buildCardImage(recipe: recipe),
                        _buildCardText(recipe: recipe),
                      ],
                    ),
                    _buildServingsChip(serving: recipe.serving),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

  Widget _buildCardImage({
    required final CartModelRecipe recipe,
  }) =>
      AspectRatio(
        aspectRatio: 1.5 / 1,
        child: recipe.imageUrl.fold(
          () => const Icon(Icons.image_not_supported),
          (final Uri url) => buildCachedNetworkImage(imageUrl: url),
        ),
      );

  Widget _buildCardText({
    required final CartModelRecipe recipe,
  }) =>
      Builder(
        builder: (final BuildContext context) => Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: AutoSizeText(
              recipe.title,
              minFontSize: 1,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ),
      );

  Widget _buildServingsChip({required final int serving}) => Padding(
        padding: const EdgeInsets.all(8),
        child: Align(
          alignment: Alignment.topCenter,
          child: Row(
            children: <Widget>[
              const Expanded(child: SizedBox.shrink()),
              Chip(
                label: Row(
                  children: <Widget>[
                    const Icon(Icons.group),
                    Text(serving.toString()),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  @override
  double get maxExtent => extendedHeight;

  @override
  double get minExtent => collapsedHeight;

  @override
  bool shouldRebuild(final SliverPersistentHeaderDelegate oldDelegate) => true;
}

class TabBarSliverDelegate extends SliverPersistentHeaderDelegate {
  final double extendedHeight;
  final double collapsedHeight;

  TabBarSliverDelegate({
    required this.extendedHeight,
    required this.collapsedHeight,
  });

  @override
  Widget build(
    final BuildContext context,
    final double shrinkOffset,
    final bool overlapsContent,
  ) =>
      Builder(
        builder: (final BuildContext context) => Padding(
          padding: const EdgeInsets.all(16),
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(64)),
              color: Theme.of(context).colorScheme.surface,
            ),
            child: TabBar(
              tabs: <Tab>[
                Tab(text: 'general.others.total'.tr()),
                Tab(text: 'general.others.missing'.tr()),
                Tab(text: 'general.others.ticket_off'.tr()),
              ],
            ),
          ),
        ),
      );

  @override
  double get maxExtent => extendedHeight;

  @override
  double get minExtent => collapsedHeight;

  @override
  bool shouldRebuild(final SliverPersistentHeaderDelegate oldDelegate) => true;
}
