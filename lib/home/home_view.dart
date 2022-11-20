import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/home/home_controller.dart';
import 'package:food_client/home/home_model.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    // ignore: unused_local_variable
    final HomeModel model = ref.watch(
      homeControllerImplementationProvider,
    );
    // ignore: unused_local_variable
    final HomeController controller = ref.watch(
      homeControllerImplementationProvider.notifier,
    );

    return Scaffold(
      backgroundColor: Colors.lightBlue.withOpacity(0.2),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildTagChips(tags: model.tags, controller: controller),
            buildRecipesList(recipes: model.recipes),
          ],
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
        child: Wrap(
          spacing: 8,
          runSpacing: 8,
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
      );

  Expanded buildRecipesList({
    required final List<HomeModelRecipe> recipes,
  }) =>
      Expanded(
        child: ListView.builder(
          itemCount: recipes.length,
          itemBuilder: (final BuildContext context, final int index) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildRecipeCardItem(recipe: recipes[index]),
            ],
          ),
        ),
      );

  Card _buildRecipeCardItem({
    required final HomeModelRecipe recipe,
  }) =>
      Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image(image: NetworkImage(recipe.imageUriLarge.toString())),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: ColoredBox(
                        color: Colors.white.withOpacity(0.8),
                        child: ListTile(
                          title: Text(recipe.displayedAttributes.name),
                          subtitle: Text(
                            recipe.displayedAttributes.headline,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}

abstract class HomeController {
  void setTagSelected({
    required final int index,
    required final bool selected,
  });
}
