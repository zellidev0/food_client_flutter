import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/pages/common/view_state.dart';
import 'package:food_client/pages/features/cart/cubit/cart_cubit.dart';
import 'package:food_client/pages/features/cart/cubit/cart_state.dart';
import 'package:food_client/pages/features/cart/widgets/cart_recipe_widget.dart';

class RecipesListDelegate extends SliverPersistentHeaderDelegate {
  final double extendedHeight;
  final double collapsedHeight;

  RecipesListDelegate({
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
    return BlocBuilder<CartCubit, CartState>(
      buildWhen: (CartState previous, CartState current) =>
          previous.runtimeType != current.runtimeType,
      builder: (BuildContext context, CartState state) => state.data.map(
        data: (ViewStateData<CartStateData> data) => ListView.separated(
          padding: const EdgeInsets.all(16).copyWith(bottom: 12),
          scrollDirection: Axis.horizontal,
          itemBuilder: (final _, final int index) => CartRecipeWidget(
            height: height,
            recipe: data.data.recipes[index],
          ),
          separatorBuilder: (final _, final __) => const SizedBox(height: 8),
          itemCount: data.data.recipes.length,
        ),
        loading: (_) => const SizedBox.shrink(),
        error: (_) => const SizedBox.shrink(),
      ),
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
