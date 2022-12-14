import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/commons/widgets.dart';
import 'package:food_client/providers/providers.dart';
import 'package:food_client/ui/home/home_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final HomeModel model = ref.watch(providers.homeControllerProvider);
    final HomeController controller = ref.read(
      providers.homeControllerProvider.notifier,
    );

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildFilterChips(
              controller: controller,
              model: model,
            ),
            const SizedBox(height: 16),
            _buildRecipesList(
              controller: controller,
              model: model,
              recipes: model.filteredRecipes,
              tags: model.allTags,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFilterChips({
    required final HomeController controller,
    required final HomeModel model,
  }) =>
      Row(
        children: <Widget>[
          buildSingleFilterChip(
            text: 'Tags',
            controller: controller,
            selectedFilters: model.allTags
                .filter((final HomeModelFilter filter) => filter.isSelected)
                .toList(),
            widgetToOpenOnClick: buildDialogTags(title: 'Tags'),
          ),
          const SizedBox(width: 8),
          buildSingleFilterChip(
            text: 'Cuisines',
            controller: controller,
            selectedFilters: model.allCuisines
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
        builder: (final BuildContext context) => FilterChip(
          label: Text(
            '$text${selectedFilters.isEmpty ? '' : ' #${selectedFilters.length.toString()}'}',
          ),
          selected: selectedFilters.isNotEmpty,
          onSelected: (final _) {
            controller.openDialog(child: widgetToOpenOnClick);
          },
        ),
      );

  Widget _buildRecipesList({
    required final HomeController controller,
    required final HomeModel model,
    required final List<HomeModelRecipe> recipes,
    required final List<HomeModelFilterTag> tags,
  }) =>
      Expanded(
        child: Column(
          children: <Widget>[
            Expanded(
              child: PagedListView<int, HomeModelRecipe>(
                pagingController: model.pagingController,
                builderDelegate: PagedChildBuilderDelegate<HomeModelRecipe>(
                  itemBuilder: (
                    final BuildContext context,
                    final HomeModelRecipe recipe,
                    final _,
                  ) =>
                      _buildRecipeCardItem(
                    recipe: recipe,
                    tags: tags,
                    controller: controller,
                  ),
                  noItemsFoundIndicatorBuilder: (final _) =>
                      _buildNoItemsFound(),
                  noMoreItemsIndicatorBuilder: (final _) => const Center(
                    child: Text('No more recipes'),
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  Widget _buildNoItemsFound() => Builder(
        builder: (final BuildContext context) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(32),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.primary,
              ),
              child: Icon(
                Icons.no_drinks,
                size: 64,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'No recipes found',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      );

  Widget _buildRecipeCardItem({
    required final HomeModelRecipe recipe,
    required final HomeController controller,
    required final List<HomeModelFilterTag> tags,
  }) =>
      Builder(
        builder: (final BuildContext context) => Card(
          color: Theme.of(context).colorScheme.surface,
          child: InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: () => controller.goToSingleRecipeView(recipeId: recipe.id),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Column(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 1.5 / 1,
                    child: buildCachedNetworkImage(
                      imageUrl: recipe.imageUri,
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
            subtitle: Text(recipe.displayedAttributes.headline),
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
            .watch(providers.homeControllerProvider)
            .allTags
            .filter((final HomeModelFilterTag tag) => tag.numberOfRecipes > 0)
            .map(
              (final HomeModelFilterTag tag) => ChoiceChip(
                label: Text('${tag.displayedName} (${tag.numberOfRecipes})'),
                selected: tag.isSelected,
                onSelected: (final bool selected) => ref
                    .watch(providers.homeControllerProvider.notifier)
                    .setTagSelected(
                      tagId: tag.id,
                      selected: selected,
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
            .watch(providers.homeControllerProvider)
            .allCuisines
            .filter(
              (final HomeModelFilterCuisine cuisine) =>
                  cuisine.numberOfRecipes > 0,
            )
            .map(
              (final HomeModelFilterCuisine cuisine) => Tooltip(
                message: cuisine.toString(),
                child: ChoiceChip(
                  label: Text(
                    '${cuisine.displayedName} (${cuisine.numberOfRecipes})',
                  ),
                  selected: cuisine.isSelected,
                  onSelected: (final bool selected) => ref
                      .watch(providers.homeControllerProvider.notifier)
                      .setCuisineSelected(
                        cuisineId: cuisine.id,
                        selected: selected,
                      ),
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

abstract class HomeController extends StateNotifier<HomeModel> {
  HomeController(super.state);

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
  });
}
