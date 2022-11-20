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
          itemBuilder: (final BuildContext context, final int index) => Card(
            child: ListTile(
              title: Text(recipes[index].displayedAttributes.name),
              subtitle: Text(recipes[index].displayedAttributes.headline),
              leading: recipes[index]
                  .imageUriIcon
                  .map(
                    (final Uri url) => CircleAvatar(
                      backgroundImage: NetworkImage(url.toString()),
                    ),
                  )
                  .getOrElse(
                    () => const CircleAvatar(
                      child: Icon(Icons.image_not_supported),
                    ),
                  ),
              trailing: const Icon(Icons.add),
            ),
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
