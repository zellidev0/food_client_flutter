import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/ui/home/home_controller.dart';
import 'package:food_client/ui/home/home_model.dart';
import 'package:fpdart/fpdart.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final HomeModel model = ref.watch(homeControllerImplementationProvider);
    final HomeController controller = ref.read(
      homeControllerImplementationProvider.notifier,
    );

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              buildFilterChips(
                controller: controller,
                model: model,
              ),
              const SizedBox(height: 16),
              if (model.allRecipes.isEmpty)
                const Expanded(
                  child: Center(child: CircularProgressIndicator()),
                )
              else
                _buildRecipesList(
                  tags: model.tags,
                  controller: controller,
                  recipes: model.filteredRecipes,
                ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildFilterChips({
    required final HomeController controller,
    required final HomeModel model,
  }) =>
      Row(
        children: <Widget>[
          buildSingleFilterChip(
            text: 'Tags',
            controller: controller,
            selectedFilters: model.tags
                .filter((final HomeModelFilter filter) => filter.isSelected)
                .toList(),
            widgetToOpenOnClick: buildDialogTags(title: 'Tags'),
          ),
          const SizedBox(width: 8),
          buildSingleFilterChip(
            text: 'Cuisines',
            controller: controller,
            selectedFilters: model.cuisines
                .filter((final HomeModelFilter filter) => filter.isSelected)
                .toList(),
            widgetToOpenOnClick: buildDialogCuisines(title: 'Cuisines'),
          ),
        ],
      );

  Widget buildSingleFilterChip({
    required final String text,
    required final List<HomeModelFilter> selectedFilters,
    required final HomeController controller,
    required final Widget widgetToOpenOnClick,
  }) =>
      Builder(
        builder: (final BuildContext context) => ChoiceChip(
          label: Text(
            '$text${selectedFilters.isEmpty ? '' : ' #${selectedFilters.length.toString()}'}',
          ),
          selected: selectedFilters.isNotEmpty,
          onSelected: (final _) {
            controller.openDialog(
              child: widgetToOpenOnClick,
              backgroundColor: Theme.of(context).backgroundColor,
            );
          },
        ),
      );

  Widget _buildRecipesList({
    required final List<HomeModelRecipe> recipes,
    required final HomeController controller,
    required final List<HomeModelFilterTag> tags,
  }) =>
      Expanded(
        child: Column(
          children: <Widget>[
            Builder(
              builder: (final BuildContext context) => Text(
                  recipes.length.toString(),
                  style: Theme.of(context).textTheme.headline6,
                )
            ),
            Expanded(
              child: ListView.builder(
                itemCount: recipes.length,
                itemBuilder: (final _, final int index) => _buildRecipeCardItem(
                  recipe: recipes[index],
                  tags: tags,
                  controller: controller,
                ),
              ),
            ),
          ],
        ),
      );

  Widget _buildRecipeCardItem({
    required final HomeModelRecipe recipe,
    required final HomeController controller,
    required final List<HomeModelFilterTag> tags,
  }) =>
      Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () => controller.goToSingleRecipeView(recipeId: recipe.id),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 1.5 / 1,
                  child: Image.network(
                    recipe.imageUriLarge.toString(),
                    errorBuilder: (final _, final __, final ___) =>
                        const Icon(Icons.image_not_supported),
                  ),
                ),
                buildRecipeCardItemDescription(
                  recipe: recipe,
                  tags: tags,
                ),
              ],
            ),
          ),
        ),
      );

  Widget buildRecipeCardItemDescription({
    required final HomeModelRecipe recipe,
    required final List<HomeModelFilterTag> tags,
  }) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
            title: Text(recipe.displayedAttributes.name),
            subtitle: Text(
              recipe.displayedAttributes.headline,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Wrap(
              spacing: 8,
              runSpacing: 4,
              children: tags
                  .filter(
                    (final HomeModelFilterTag element) =>
                        recipe.tagIds.contains(element.id),
                  )
                  .map(
                    (final HomeModelFilterTag tag) => Chip(
                      label: Text(tag.displayedName),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      );
}

Widget buildDialogTags({
  required final String title,
}) =>
    Consumer(
      builder: (final _, final WidgetRef ref, final __) => buildDialog(
        children: ref
            .watch(homeControllerImplementationProvider)
            .tags
            .filter((final HomeModelFilterTag tag) => tag.numberOfRecipes > 0)
            .map(
              (final HomeModelFilterTag tag) => Tooltip(
                message: tag.toString(),
                child: ChoiceChip(
                  label: Text('${tag.displayedName} (${tag.numberOfRecipes})'),
                  selected: tag.isSelected,
                  onSelected: (final bool selected) => ref
                      .watch(
                        homeControllerImplementationProvider.notifier,
                      )
                      .setTagSelected(
                        tagId: tag.id,
                        selected: selected,
                      ),
                ),
              ),
            )
            .toList(),
      ),
    );

Widget buildDialogCuisines({
  required final String title,
}) =>
    Consumer(
      builder: (final _, final WidgetRef ref, final __) => buildDialog(
        children: ref
            .watch(homeControllerImplementationProvider)
            .cuisines
            .filter(
              (final HomeModelFilterCuisine cuisine) =>
                  cuisine.numberOfRecipes > 0,
            )
            .map(
              (final HomeModelFilterCuisine cuisine) => ChoiceChip(
                label: Text(
                  '${cuisine.displayedName} (${cuisine.numberOfRecipes})',
                ),
                selected: cuisine.isSelected,
                onSelected: (final bool selected) => ref
                    .watch(
                      homeControllerImplementationProvider.notifier,
                    )
                    .setCuisineSelected(
                      cuisineId: cuisine.id,
                      selected: selected,
                    ),
              ),
            )
            .toList(),
      ),
    );

Widget buildDialog({
  required final List<Widget> children,
}) =>
    Builder(
      builder: (final BuildContext context) => Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: children,
                ),
              ),
            ),
          ],
        ),
      ),
    );

abstract class HomeController {
  void setTagSelected({
    required final String tagId,
    required final bool selected,
  });
  void setCuisineSelected({
    required final String cuisineId,
    required final bool selected,
  });
  void goToSingleRecipeView({
    required final String recipeId,
  });

  void openDialog({
    required final Widget child,
    required final Color backgroundColor,
  });
}
