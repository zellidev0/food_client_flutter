import 'dart:ui';

import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/commons/widgets.dart';
import 'package:food_client/providers/providers.dart';
import 'package:food_client/ui/single_recipe/single_recipe_model.dart';
import 'package:fpdart/fpdart.dart';

class SingleRecipeView extends ConsumerWidget {
  final String _recipeId;

  const SingleRecipeView({
    super.key,
    required final String recipeId,
  }) : _recipeId = recipeId;

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final SingleRecipeModel model = ref.watch(
      providers.singleRecipeControllerProvider(_recipeId),
    );
    final SingleRecipeController controller = ref.read(
      providers.singleRecipeControllerProvider(_recipeId).notifier,
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: model.recipe.fold(
        (final Exception exception) => Text(exception.toString()),
        (final Option<SingleRecipeModelRecipe> content) => content.fold(
          () => const Center(child: CircularProgressIndicator()),
          (final SingleRecipeModelRecipe recipe) => Stack(
            children: <Widget>[
              DefaultTabController(
                length: 2,
                child: _buildContent(
                  recipe: recipe,
                  selectedYield: model.selectedYield,
                  controller: controller,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    onPressed: () => controller.openAddToShoppingCartDialog(
                      recipe: recipe,
                      recipeId: _recipeId,
                    ),
                    child: const Icon(Icons.add_shopping_cart),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent({
    required final SingleRecipeController controller,
    required final SingleRecipeModelRecipe recipe,
    required final Option<int> selectedYield,
  }) =>
      Builder(
        builder: (final BuildContext context) => NestedScrollView(
          physics: const BouncingScrollPhysics(),
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
                  onPressed: () {},
                ),
                actions: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.share),
                    onPressed: () => controller.shareRecipe(recipe: recipe),
                  ),
                ],
                backgroundColor: Colors.transparent,
                scrolledUnderElevation: 0,
                shadowColor: Colors.transparent,
                stretch: true,
                flexibleSpace: FlexibleSpaceBar(
                  stretchModes: const <StretchMode>[
                    StretchMode.zoomBackground,
                    StretchMode.blurBackground,
                  ],
                  background: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: double.infinity,
                        child: buildTopImage(recipe: recipe),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: Text(
                                'This is a very very long title of one of the best recipes that the whole wide world has ever seen ever in the world forever and ever and ever',
                                style: Theme.of(context).textTheme.titleMedium,
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
                extendedHeight:
                    const TabBar(tabs: <Widget>[]).preferredSize.height + 32,
                collapsedHeight:
                    const TabBar(tabs: <Widget>[]).preferredSize.height + 32,
                controller: controller,
                yields: recipe.yields,
                selectedYield: selectedYield,
                recipeId: _recipeId,
              ),
            ),
          ],
          body: Column(
            children: <Widget>[
              _buildCookingDetails(
                difficulty: recipe.difficulty,
                totalCookingTime: recipe.totalCookingTime,
              ),
              Expanded(
                child: buildTabsContent(
                  recipe: recipe,
                  selectedYield: selectedYield,
                  controller: controller,
                ),
              ),
            ],
          ),
        ),
      );

  Widget buildTopImage({required final SingleRecipeModelRecipe recipe}) =>
      recipe.imageUrl
          .map<Widget>(
            (final Uri imageUri) => buildCachedNetworkImage(
              imageUrl: imageUri,
            ),
          )
          .getOrElse(() => const Icon(Icons.image_not_supported));

  Widget buildTabsContent({
    required final SingleRecipeModelRecipe recipe,
    required final Option<int> selectedYield,
    required final SingleRecipeController controller,
  }) =>
      TabBarView(
        children: <Widget>[
          buildIngredients(
            controller: controller,
            yields: recipe.yields,
            selectedYield: selectedYield,
          ),
          _buildDescriptionStepsTab(
            steps: recipe.steps,
          ),
        ],
      );

  Widget _buildDescriptionStepsTab({
    required final List<SingleRecipeModelStep> steps,
  }) =>
      ListView(
        padding: EdgeInsets.zero,
        children: steps
            .mapIndexed(
              (final int index, final SingleRecipeModelStep step) =>
                  buildSingleDescriptionCard(
                index: index,
                step: step,
              ),
            )
            .toList(),
      );

  Widget buildSingleDescriptionCard({
    required final SingleRecipeModelStep step,
    required final int index,
  }) =>
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Card(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 1.5 / 1,
                    child: step.imageUrl.fold(
                      () => const Icon(Icons.image_not_supported),
                      (final Uri url) => ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                        child: buildCachedNetworkImage(imageUrl: url),
                      ),
                    ),
                  ),
                  _buildDescriptionTextStepIndicator(stepNumber: index)
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: MarkdownBody(
                  data: step.instructionMarkdown,
                  shrinkWrap: true,
                ),
              ),
            ],
          ),
        ),
      );

  Widget _buildDescriptionTextStepIndicator({
    required final int stepNumber,
  }) =>
      Padding(
        padding: const EdgeInsets.all(16),
        child: FloatingActionButton(
          onPressed: null,
          child: Text((stepNumber + 1).toString()),
        ),
      );

  Widget buildIngredients({
    required final List<SingleRecipeModelYield> yields,
    required final SingleRecipeController controller,
    required final Option<int> selectedYield,
  }) =>
      optionOf(
        yields.firstWhereOrNull(
          (final SingleRecipeModelYield yield) =>
              some(yield.servings) == selectedYield,
        ),
      ).fold(
        () => throw Exception('No yield selected, not possible state reached'),
        (final SingleRecipeModelYield yield) => ListView(
          padding: EdgeInsets.zero,
          children: yield.ingredients
              .map(
                (final SingleRecipeModelIngredient ingredient) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Card(
                    child: ListTile(
                      leading: AspectRatio(
                        aspectRatio: 1,
                        child: ingredient.imageUrl.fold(
                          () => const Icon(Icons.image_not_supported),
                          (final Uri url) => buildCachedNetworkImage(
                            imageUrl: url,
                          ),
                        ),
                      ),
                      title: Text(ingredient.displayedName),
                      subtitle: Text(
                        '${ingredient.amount.fold(
                          () => '',
                          (final double amount) =>
                              '${amount.toStringAsFixed(0)} ',
                        )}${ingredient.unit.getOrElse(() => '')}',
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      );

  Row _buildCookingDetails({
    required final int difficulty,
    required final Option<Duration> totalCookingTime,
  }) =>
      Row(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                const Icon(Icons.hardware),
                Text(
                  () {
                    switch (difficulty) {
                      case 1:
                        return 'ui.single_recipe_view.difficulty.easy'.tr();
                      case 2:
                        return 'ui.single_recipe_view.difficulty.medium'.tr();
                      case 3:
                        return 'ui.single_recipe_view.difficulty.hard'.tr();
                      default:
                        return '-';
                    }
                  }.call(),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                const Icon(Icons.timelapse),
                Text(
                  totalCookingTime.fold(
                    () => '-',
                    (final Duration duration) => '${duration.inMinutes} min',
                  ),
                ),
              ],
            ),
          ),
        ],
      );
}

abstract class SingleRecipeController extends StateNotifier<SingleRecipeModel> {
  SingleRecipeController(super.state);

  void setSelectedYield({
    required final int yield,
    required final String recipeId,
  });
  void openAddToShoppingCartDialog({
    required final SingleRecipeModelRecipe recipe,
    required final String recipeId,
  });
  void shareRecipe({required final SingleRecipeModelRecipe recipe});
}

class TabBarSliverDelegate extends SliverPersistentHeaderDelegate {
  final double extendedHeight;
  final double collapsedHeight;
  final Option<int> selectedYield;
  final SingleRecipeController controller;
  final List<SingleRecipeModelYield> yields;
  final String recipeId;

  TabBarSliverDelegate({
    required this.extendedHeight,
    required this.collapsedHeight,
    required this.selectedYield,
    required this.controller,
    required this.yields,
    required this.recipeId,
  });

  @override
  Widget build(
    final BuildContext context,
    final double shrinkOffset,
    final bool overlapsContent,
  ) =>
      Padding(
        padding: const EdgeInsets.all(16),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(64)),
            color: Theme.of(context).colorScheme.surface,
          ),
          child: buildTabBar(
            tabs: <Tab>[
              _buildTabIngredients(
                selectedYield: selectedYield,
                controller: controller,
                yields: yields,
                recipeId: recipeId,
              ),
              Tab(text: 'general.others.instructions'.tr()),
            ],
          ),
        ),
      );

  Tab _buildTabIngredients({
    required final Option<int> selectedYield,
    required final SingleRecipeController controller,
    required final List<SingleRecipeModelYield> yields,
    required final String recipeId,
  }) {
    final int index = (yields.indexWhere(
              (final SingleRecipeModelYield yield) =>
                  some(yield.servings) == selectedYield,
            ) +
            1) %
        yields.length;
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          const Text('Ingredients'),
          if (yields.toList().length > 1)
            ElevatedButton.icon(
              onPressed: () {
                controller.setSelectedYield(
                  yield: yields
                      .map(
                        (final SingleRecipeModelYield yield) => yield.servings,
                      )
                      .toList()[index],
                  recipeId: recipeId,
                );
              },
              icon: yields.toList().length < 2
                  ? const Icon(Icons.group)
                  : (yields.toList().length - index != yields.toList().length
                      ? const Icon(Icons.group_add)
                      : const Icon(Icons.group_remove)),
              label: Text('${selectedYield.getOrElse(() => 1)}'),
            )
        ],
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
