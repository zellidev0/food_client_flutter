import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:food_client/pages/features/cart/widgets/cart_recipe_widget.dart';

class RecipesListDelegate extends SliverPersistentHeaderDelegate {
  final double extendedHeight;
  final double collapsedHeight;
  final int length;

  RecipesListDelegate({
    required this.extendedHeight,
    required this.collapsedHeight,
    required this.length,
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
      itemBuilder: (final _, final int index) => CartRecipeWidget(
        height: height,
        index: index,
      ),
      separatorBuilder: (final _, final __) => const SizedBox(height: 8),
      itemCount: length,
    );
  }

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
