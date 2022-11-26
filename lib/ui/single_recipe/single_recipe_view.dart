import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/ui/single_recipe/single_recipe_controller.dart';
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
      singleRecipeControllerImplementationProvider(recipeId: _recipeId),
    );
    final SingleRecipeController controller = ref.read(
      singleRecipeControllerImplementationProvider(recipeId: _recipeId)
          .notifier,
    );

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: controller.goBack,
        ),
      ),
      body: model.recipe.fold(
        (final Exception exception) => Text(exception.toString()),
        (final Option<SingleRecipeModelRecipe> content) => content.fold(
          CircularProgressIndicator.new,
          (final SingleRecipeModelRecipe recipe) => _buildContent(
            recipe: recipe,
            selectedYield: model.selectedYield,
            controller: controller,
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
        builder: (final BuildContext context) => Stack(
          children: <Widget>[
            buildTopImage(recipe: recipe),
            buildMainContent(
              recipe: recipe,
              context: context,
              selectedYield: selectedYield,
              controller: controller,
            ),
          ],
        ),
      );

  Padding buildMainContent({
    required final SingleRecipeModelRecipe recipe,
    required final BuildContext context,
    required final Option<int> selectedYield,
    required final SingleRecipeController controller,
  }) =>
      Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Expanded(child: Container()),
            Expanded(
              flex: 3,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: <Widget>[
                      Tooltip(
                        margin: const EdgeInsets.all(16),
                        message: recipe.displayedAttributes.headline,
                        child: Text(
                          recipe.displayedAttributes.name,
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ),
                      // _buildCookingDetails(),
                      const Divider(),
                      buildTabContent(
                        recipe: recipe,
                        selectedYield: selectedYield,
                        controller: controller,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      );

  Column buildTopImage({required final SingleRecipeModelRecipe recipe}) =>
      Column(
        children: <Widget>[
          recipe.imageUri
              .map<Widget>(
                (final Uri imageUri) => Image.network(
                  imageUri.toString(),
                  fit: BoxFit.scaleDown,
                  errorBuilder: (final _, final __, final ___) =>
                      const Expanded(
                    child: Icon(Icons.image_not_supported),
                  ),
                ),
              )
              .getOrElse(() => const Icon(Icons.image_not_supported)),
          Expanded(
            child: Container(width: double.infinity),
          ),
        ],
      );

  Expanded buildTabContent({
    required final SingleRecipeModelRecipe recipe,
    required final Option<int> selectedYield,
    required final SingleRecipeController controller,
  }) =>
      Expanded(
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: <Widget>[
              _buildTabBar(),
              // _buildCookingDetails(),
              buildTabsContent(
                recipe: recipe,
                selectedYield: selectedYield,
                controller: controller,
              ),
            ],
          ),
        ),
      );

  Expanded buildTabsContent({
    required final SingleRecipeModelRecipe recipe,
    required final Option<int> selectedYield,
    required final SingleRecipeController controller,
  }) =>
      Expanded(
        child: TabBarView(
          children: <Widget>[
            Column(
              children: <Widget>[
                const SizedBox(height: 16),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        buildYieldToggleButton(
                          yields: recipe.yields,
                          selectedYield: selectedYield,
                          controller: controller,
                        ),
                        const SizedBox(height: 16),
                        buildIngredients(
                          yields: recipe.yields,
                          selectedYield: selectedYield,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            _buildDescriptionStepsTab(
              steps: recipe.steps,
            ),
          ],
        ),
      );

  Widget _buildTabBar() => Builder(
        builder: (final BuildContext context) => TabBar(
          labelColor: Theme.of(context).indicatorColor,
          splashBorderRadius: const BorderRadius.all(Radius.circular(20)),
          indicator: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          indicatorColor: Colors.red,
          tabs: const <Widget>[
            Tab(text: 'Ingredients'),
            Tab(text: 'Instructions'),
          ],
        ),
      );

  Widget _buildDescriptionStepsTab({
    required final List<SingleRecipeModelStep> steps,
  }) =>
      Column(
        children: <Widget>[
          const SizedBox(height: 16),
          Expanded(
            child: ListView(
              children: steps
                  .mapIndexed(
                    (
                      final int index,
                      final SingleRecipeModelStep step,
                    ) =>
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
          borderRadius: BorderRadius.circular(20),
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
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      child: Image.network(
                        url.toString(),
                        fit: BoxFit.fill,
                        errorBuilder: (final _, final __, final ___) =>
                            const Icon(Icons.image_not_supported),
                      ),
                    ),
                  ),
                ),
                _buildDescriptionTextStepIndicator(stepNumber: index)
              ],
            ),
            Markdown(
              data: step.instructionMarkdown,
              shrinkWrap: true,
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
    required final Option<int> selectedYield,
  }) =>
      optionOf(
        yields.firstWhereOrNull(
          (final SingleRecipeModelYield yield) => yield.yields == selectedYield,
        ),
      ).fold(
        () => throw Exception('No yield selected, not possible state reached'),
        (final SingleRecipeModelYield yield) => Column(
          children: yield.ingredients
              .map(
                (final SingleRecipeModelIngredient ingredient) => Card(
                  child: ListTile(
                    leading: ingredient.imageUrl.fold(
                      () => const Icon(Icons.image_not_supported),
                      (final Uri url) => Image.network(
                        url.toString(),
                        errorBuilder: (final _, final __, final ___) =>
                            const Icon(Icons.image_not_supported),
                      ),
                    ),
                    title: Text(ingredient.displayedName),
                    subtitle: Text(
                      '${ingredient.amount.fold(
                        () => 'nach Ermessen',
                        (final double amount) => amount.toString(),
                      )} ${ingredient.unit.getOrElse(() => '')}',
                    ),
                    trailing: const Icon(Icons.more_vert),
                  ),
                ),
              )
              .toList(),
        ),
      );

  Widget buildYieldToggleButton({
    required final List<SingleRecipeModelYield> yields,
    required final Option<int> selectedYield,
    required final SingleRecipeController controller,
  }) =>
      Builder(
        builder: (final BuildContext context) => ToggleButtons(
          borderRadius: BorderRadius.circular(16),
          isSelected: yields
              .map(
                (final SingleRecipeModelYield yield) =>
                    yield.yields == selectedYield,
              )
              .toList(),
          children: yields
              .map(
                (final SingleRecipeModelYield yield) => Text(
                  yield.yields.getOrElse(() => 0).toString(),
                ),
              )
              .toList(),
          onPressed: (final int index) => controller.setSelectedYield(
            yield: yields
                .map(
                  (final SingleRecipeModelYield yield) =>
                      yield.yields.getOrElse(() => 0),
                )
                .toList()[index],
          ),
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

abstract class SingleRecipeController {
  void setSelectedYield({required final int yield});
  void goBack();
}
