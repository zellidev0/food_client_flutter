import 'package:collection/collection.dart';
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
      backgroundColor: Colors.lightBlue.withOpacity(0.2),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              LayoutBuilder(
                builder: (final _, final BoxConstraints constraints) =>
                    ConstrainedBox(
                  constraints: constraints.copyWith(maxHeight: 200),
                  child: buildTagChips(
                    tags: model.tags,
                    controller: controller,
                  ),
                ),
              ),
              buildRecipesList(
                recipes: model.recipes
                    .filter(
                      (final HomeModelRecipe recipe) =>
                          model.tags
                              .where((final HomeModelTag tag) => tag.isSelected)
                              .isEmpty ||
                          recipe.tagIds.any(
                            (final String tag) => model.tags
                                .where(
                                    (final HomeModelTag tag) => tag.isSelected)
                                .map((final HomeModelTag tagId) => tagId.id)
                                .toList()
                                .contains(tag),
                          ),
                    )
                    .toList(),
                tags: model.tags,
                controller: controller,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTagChips({
    required final List<HomeModelTag> tags,
    required final HomeController controller,
  }) =>
      Padding(
        padding: const EdgeInsets.all(4),
        child: SingleChildScrollView(
          child: Wrap(
            spacing: 8,
            runSpacing: 0,
            children: List<Widget>.generate(
              tags.length,
              (final int index) => ChoiceChip(
                label: Text(tags[index].displayedName),
                selected: tags[index].isSelected,
                onSelected: (final bool selected) {
                  controller.setTagSelected(index: index, selected: selected);
                },
              ),
            ).toList(),
          ),
        ),
      );

  Expanded buildRecipesList({
    required final List<HomeModelRecipe> recipes,
    required final HomeController controller,
    required final List<HomeModelTag> tags,
  }) =>
      Expanded(
        child: ListView.builder(
          itemCount: recipes.length,
          itemBuilder: (final BuildContext context, final int index) =>
              _buildRecipeCardItem(
            recipe: recipes[index],
            tags: tags,
            controller: controller,
          ),
        ),
      );

  Widget _buildRecipeCardItem({
    required final HomeModelRecipe recipe,
    required final HomeController controller,
    required final List<HomeModelTag> tags,
  }) =>
      InkWell(
        onTap: () => controller.goToSingleRecipeView(recipeId: recipe.id),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Column(
              children: <Widget>[
                Image.network(
                  recipe.imageUriLarge.toString(),
                  errorBuilder: (final _, final __, final ___) => const Padding(
                    padding: EdgeInsets.all(64),
                    child: Icon(Icons.image_not_supported),
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
    required final List<HomeModelTag> tags,
  }) =>
      ColoredBox(
        color: Colors.white.withOpacity(0.8),
        child: Column(
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
                children: recipe.tagIds
                    .map(
                      (final String tagId) => optionOf(
                        tags.firstWhereOrNull(
                          (final HomeModelTag element) => element.id == tagId,
                        ),
                      ).map(
                        (final HomeModelTag tag) => Chip(
                          label: Text(tag.displayedName),
                        ),
                      ),
                    )
                    .whereType<Some<Widget>>()
                    .map((final Some<Widget> optional) => optional.value)
                    .toList(),
              ),
            ),
          ],
        ),
      );
}

abstract class HomeController {
  void setTagSelected({
    required final int index,
    required final bool selected,
  });
  void goToSingleRecipeView({
    required final String recipeId,
  });
}
