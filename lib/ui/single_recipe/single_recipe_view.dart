import 'dart:ui';

import 'package:collection/collection.dart';
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
              _buildContent(
                recipe: recipe,
                selectedYield: model.selectedYield,
                controller: controller,
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
        builder: (final BuildContext context) => CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              floating: true,
              shadowColor: Colors.transparent,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: controller.goBack,
              ),
              stretch: true,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: const EdgeInsets.all(16),
                title: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Text(
                      recipe.displayedAttributes.name,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                ),
                background: buildTopImage(recipe: recipe),
              ),
              pinned: true,
              expandedHeight: MediaQuery.of(context).size.height * 0.3,
            ),
            SliverFillRemaining(
              child: buildTabContent(
                recipe: recipe,
                selectedYield: selectedYield,
                controller: controller,
              ),
            ),
          ],
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

  Widget buildTabContent({
    required final SingleRecipeModelRecipe recipe,
    required final Option<int> selectedYield,
    required final SingleRecipeController controller,
  }) =>
      Padding(
        padding: const EdgeInsets.all(16),
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: <Widget>[
              _buildTabBar(
                controller: controller,
                yields: recipe.yields,
                selectedYield: selectedYield,
              ),
              // _buildCookingDetails(),
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

  Widget buildTabsContent({
    required final SingleRecipeModelRecipe recipe,
    required final Option<int> selectedYield,
    required final SingleRecipeController controller,
  }) =>
      TabBarView(
        children: <Widget>[
          Column(
            children: <Widget>[
              const SizedBox(height: 8),
              Expanded(
                child: buildIngredients(
                  controller: controller,
                  yields: recipe.yields,
                  selectedYield: selectedYield,
                ),
              )
            ],
          ),
          _buildDescriptionStepsTab(
            steps: recipe.steps,
          ),
        ],
      );

  Widget _buildTabBar({
    required final SingleRecipeController controller,
    required final List<SingleRecipeModelYield> yields,
    required final Option<int> selectedYield,
  }) =>
      Builder(
        builder: (final BuildContext context) => TabBar(
          labelColor: Theme.of(context).colorScheme.primary,
          indicatorColor: Theme.of(context).colorScheme.primary,
          unselectedLabelColor: Theme.of(context).colorScheme.onSurfaceVariant,
          splashBorderRadius: const BorderRadius.all(Radius.circular(12)),
          indicator: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          tabs: <Widget>[
            _buildTabIngredients(
              selectedYield: selectedYield,
              controller: controller,
              yields: yields,
            ),
            const Tab(text: 'Instructions'),
          ],
        ),
      );

  Tab _buildTabIngredients({
    required final Option<int> selectedYield,
    required final SingleRecipeController controller,
    required final List<SingleRecipeModelYield> yields,
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
          Text(
            'Ingredients\n ${selectedYield.getOrElse(() => 1)} Persons',
          ),
          IconButton(
            onPressed: yields.toList().length < 2
                ? null
                : () {
                    controller.setSelectedYield(
                      yield: yields
                          .map(
                            (final SingleRecipeModelYield yield) =>
                                yield.servings,
                          )
                          .toList()[index],
                      recipeId: _recipeId,
                    );
                  },
            icon: yields.toList().length < 2
                ? const Icon(Icons.group)
                : (yields.toList().length - index != yields.toList().length
                    ? const Icon(Icons.group_add)
                    : const Icon(Icons.group_remove)),
          )
        ],
      ),
    );
  }

  Widget _buildDescriptionStepsTab({
    required final List<SingleRecipeModelStep> steps,
  }) =>
      Column(
        children: <Widget>[
          const SizedBox(height: 8),
          Expanded(
            child: ListView(
              children: steps
                  .mapIndexed(
                    (final int index, final SingleRecipeModelStep step) =>
                        buildSingleDescriptionCard(
                      index: index,
                      step: step,
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      );

  Card buildSingleDescriptionCard({
    required final SingleRecipeModelStep step,
    required final int index,
  }) =>
      Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
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
      );

  Widget _buildDescriptionTextStepIndicator({
    required final int stepNumber,
  }) =>
      Padding(
        padding: const EdgeInsets.all(16),
        child: Builder(
          builder: (final BuildContext context) => FloatingActionButton(
            onPressed: null,
            child: Text((stepNumber + 1).toString()),
          ),
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
          children: yield.ingredients
              .map(
                (final SingleRecipeModelIngredient ingredient) => Card(
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
                        () => 'nach Ermessen',
                        (final double amount) => amount.toString(),
                      )} ${ingredient.unit.getOrElse(() => '')}',
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      );

  // Row _buildCookingDetails() => Row(
  //       children: <Widget>[
  //         _buildCookingDetailIconWithText(),
  //         _buildCookingDetailIconWithText(),
  //         _buildCookingDetailIconWithText(),
  //       ],
  //     );

  // Expanded _buildCookingDetailIconWithText() => Expanded(
  //       child: Column(
  //         children: const <Widget>[
  //           Icon(Icons.timelapse),
  //           Text('25 min'),
  //         ],
  //       ),
  //     );
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
  void goBack();
}
