import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/ui/single_recipe/single_recipe_controller.dart';
import 'package:food_client/ui/single_recipe/single_recipe_model.dart';
import 'package:fpdart/fpdart.dart';

class SingleRecipeView extends ConsumerWidget {
  const SingleRecipeView({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    // ignore: unused_local_variable
    final SingleRecipeModel model = ref.watch(
      singleRecipeControllerImplementationProvider,
    );
    // ignore: unused_local_variable
    final SingleRecipeController controller = ref.watch(
      singleRecipeControllerImplementationProvider.notifier,
    );

    return Scaffold(
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
    required final int selectedYield,
  }) =>
      Builder(
        builder: (final BuildContext context) => Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    width: double.infinity,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: <Widget>[
                  const Expanded(
                    child: ColoredBox(color: Colors.transparent),
                  ),
                  Expanded(
                    flex: 3,
                    child: ColoredBox(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: <Widget>[
                            Text(
                              recipe.displayedAttributes.name,
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                            Text(
                              recipe.displayedAttributes.headline,
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            const Divider(),
                            _buildCookingDetails(),
                            const Divider(),
                            Expanded(
                              child: DefaultTabController(
                                length: 2,
                                child: Column(
                                  children: <Widget>[
                                    const TabBar(
                                      tabs: <Widget>[
                                        Text('Ingredients'),
                                        Text('Instructions'),
                                      ],
                                    ),
                                    Expanded(
                                      child: TabBarView(
                                        children: <Widget>[
                                          Column(
                                            children: <Widget>[
                                              buildYieldToggleButton(
                                                yields: recipe.yields,
                                                selectedYield: selectedYield,
                                                controller: controller,
                                              ),
                                              buildIngredients(
                                                recipe: recipe,
                                                selectedYield: selectedYield,
                                              ),
                                            ],
                                          ),
                                          _buildDescriptionStepsTab(
                                            steps: recipe.steps,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );

  ListView _buildDescriptionStepsTab({
    required final List<SingleRecipeModelStep> steps,
  }) =>
      ListView(
        children: steps
            .mapIndexed(
              (
                final int index,
                final SingleRecipeModelStep step,
              ) =>
                  Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      step.imageUrl.fold(
                        () => const Icon(Icons.image_not_supported),
                        (final Uri url) => Image.network(
                          url.toString(),
                          errorBuilder: (final _, final __, final ___) =>
                              const Icon(Icons.image_not_supported),
                        ),
                      ),
                      _buildDescriptionTextStepIndicator(
                        stepNumber: index + 1,
                      )
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(step.instructionMarkdown),
                  const Divider(),
                ],
              ),
            )
            .toList(),
      );

  FloatingActionButton _buildDescriptionTextStepIndicator({
    required final int stepNumber,
  }) =>
      FloatingActionButton.small(
        onPressed: null,
        backgroundColor: Colors.grey,
        child: Text((stepNumber + 1).toString()),
      );

  Widget buildIngredients({
    required final SingleRecipeModelRecipe recipe,
    required final int selectedYield,
  }) =>
      optionOf(
        recipe.yields.firstWhereOrNull(
          (final SingleRecipeModelYield yield) => yield.yield == selectedYield,
        ),
      ).fold(
        () => const Text('Select a yield'),
        (final SingleRecipeModelYield yield) => Column(
          children: yield.ingredients
              .map(
                (final SingleRecipeModelIngredient ingredient) => Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: ingredient.imageUrl.fold(
                        () => const Icon(Icons.image_not_supported),
                        (final Uri url) => Image.network(url.toString()),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      flex: 3,
                      child: Text(ingredient.displayedName),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      flex: 1,
                      child: Text('${ingredient.amount.fold(
                        () => '-',
                        (final double amount) => amount.toString(),
                      )} ${ingredient.unit.getOrElse(() => '')}'),
                    ),
                  ],
                ),
              )
              .toList(),
        ),
      );

  ToggleButtons buildYieldToggleButton({
    required final List<SingleRecipeModelYield> yields,
    required final int selectedYield,
    required final SingleRecipeController controller,
  }) =>
      ToggleButtons(
        isSelected: yields
            .map(
              (final SingleRecipeModelYield yield) =>
                  yield.yield == selectedYield,
            )
            .toList(),
        children: yields
            .map(
              (final SingleRecipeModelYield yield) =>
                  Text(yield.yield.toString()),
            )
            .toList(),
        onPressed: (final int index) => controller.setSelectedYield(
          yield: yields
              .map((final SingleRecipeModelYield yield) => yield.yield)
              .toList()[index],
        ),
      );

  Row _buildCookingDetails() => Row(
        children: <Widget>[
          _buildCookingDetailIconWithText(),
          _buildCookingDetailIconWithText(),
          _buildCookingDetailIconWithText(),
        ],
      );

  Expanded _buildCookingDetailIconWithText() => Expanded(
        child: Column(
          children: const <Widget>[
            Icon(Icons.timelapse),
            Text('25 min'),
          ],
        ),
      );
}

abstract class SingleRecipeController {
  void setSelectedYield({required final int yield});
}
