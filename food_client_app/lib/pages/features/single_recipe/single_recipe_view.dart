import 'dart:ui';

import 'package:custom_nested_scroll_view/custom_nested_scroll_view.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/pages/common/view_state.dart';
import 'package:food_client/pages/features/single_recipe/cubit/single_recipe_cubit.dart';
import 'package:food_client/pages/features/single_recipe/cubit/single_recipe_state.dart';
import 'package:food_client/pages/features/single_recipe/widgets/cooking_details_widget.dart';
import 'package:food_client/pages/features/single_recipe/widgets/tabs_content_widget.dart';
import 'package:food_client/pages/features/single_recipe/widgets/top_image_widget.dart';

class SingleRecipeView extends StatelessWidget {
  const SingleRecipeView({
    super.key,
  });

  @override
  Widget build(final BuildContext context) =>
      BlocBuilder<SingleRecipeCubit, SingleRecipeState>(
        buildWhen: (SingleRecipeState previous, SingleRecipeState current) =>
            previous.recipe.runtimeType != current.recipe.runtimeType,
        builder: (BuildContext context, SingleRecipeState state) =>
            state.recipe.map(
          data: (ViewStateData<SingleRecipeStateRecipe> data) => Stack(
            children: <Widget>[
              DefaultTabController(
                length: 2,
                child: CustomNestedScrollView(
                  physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics(),
                  ),
                  headerSliverBuilder: (
                    final BuildContext contextWithScrollView,
                    final __,
                  ) =>
                      <Widget>[
                    SliverAppBar(
                      floating: true,
                      leading: IconButton(
                        icon: Icon(
                          defaultTargetPlatform == TargetPlatform.iOS
                              ? Icons.arrow_back_ios_new
                              : Icons.arrow_back,
                        ),
                        onPressed: context.read<SingleRecipeCubit>().goBack,
                      ),
                      actions: <Widget>[
                        IconButton(
                          icon: const Icon(Icons.share),
                          onPressed: () => context
                              .read<SingleRecipeCubit>()
                              .shareRecipe(recipe: data.data),
                        ),
                      ],
                      backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor,
                      scrolledUnderElevation: 0,
                      shadowColor: Colors.transparent,
                      stretch: true,
                      flexibleSpace: FlexibleSpaceBar(
                        stretchModes: const <StretchMode>[
                          StretchMode.zoomBackground,
                        ],
                        background: Stack(
                          children: <Widget>[
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: double.infinity,
                              child: TopImageWidget(
                                recipe: data.data,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 10,
                                      sigmaY: 10,
                                    ),
                                    child: Text(
                                      data.data.displayedAttributes.name,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium,
                                      // ignore: deprecated_member_use
                                      textScaleFactor: 1.3,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      pinned: true,
                      expandedHeight: MediaQuery.of(context).size.height * 0.3,
                    ),
                    SliverPersistentHeader(
                      floating: false,
                      pinned: true,
                      delegate: TabBarSliverDelegate(
                        extendedHeight: const TabBar(tabs: <Widget>[])
                                .preferredSize
                                .height +
                            32,
                        collapsedHeight: const TabBar(tabs: <Widget>[])
                                .preferredSize
                                .height +
                            32,
                      ),
                    ),
                  ],
                  body: Column(
                    children: <Widget>[
                      BlocBuilder<SingleRecipeCubit, SingleRecipeState>(
                        builder: (
                          BuildContext context,
                          SingleRecipeState state,
                        ) =>
                            CookingDetailsWidget(
                          difficulty: data.data.difficulty,
                          totalCookingTime: data.data.totalCookingTime,
                          selectedYield: state.selectedYield,
                          yields: data.data.yields,
                          recipeId: data.data.id,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Expanded(
                        child:
                            BlocBuilder<SingleRecipeCubit, SingleRecipeState>(
                          builder: (
                            BuildContext context,
                            SingleRecipeState state,
                          ) =>
                              TabsContentWidget(
                            recipe: data.data,
                            selectedYield: state.selectedYield,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: BlocBuilder<SingleRecipeCubit, SingleRecipeState>(
                    builder: (
                      BuildContext context,
                      SingleRecipeState state,
                    ) =>
                        FloatingActionButton(
                      onPressed: () => context
                          .read<SingleRecipeCubit>()
                          .openAddToShoppingCartDialog(
                            recipe: data.data,
                            recipeId: state.recipeId,
                          ),
                      child: const Icon(Icons.add_shopping_cart),
                    ),
                  ),
                ),
              ),
            ],
          ),
          loading: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          error: (final ViewStateError<SingleRecipeStateRecipe> error) =>
              Center(
            child: Text(error.toString()),
          ),
        ),
      );
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
      Container(
        padding: const EdgeInsets.all(16),
        color: Theme.of(context).scaffoldBackgroundColor,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(64)),
            color: Theme.of(context).colorScheme.surface,
          ),
          child: TabBar(
            tabs: <Tab>[
              const Tab(text: 'Ingredients'),
              Tab(text: 'general.others.instructions'.tr()),
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
