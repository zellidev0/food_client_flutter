import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:food_client/commons/widgets.dart';
import 'package:food_client/mvc.dart';
import 'package:food_client/ui/home/home_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

final PageStorageBucket pageStorageBucket = PageStorageBucket();

class HomeView extends MvcView<HomeController, HomeModel> {
  const HomeView({
    required super.controller,
    required super.model,
    super.key,
  });

  @override
  Widget build(final BuildContext context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16).copyWith(bottom: 0),
          child: NestedScrollView(
            headerSliverBuilder: (final _, final __) => <Widget>[
              SliverAppBar(
                floating: true,
                pinned: true,
                backgroundColor: Colors.transparent,
                scrolledUnderElevation: 0,
                flexibleSpace: FlexibleSpaceBar(
                  titlePadding: EdgeInsets.zero,
                  centerTitle: true,
                  title: buildFilters(
                    model: model,
                    controller: controller,
                  ),
                ),
              ),
            ],
            body: _buildRecipesList(
              controller: controller,
              model: model,
            ),
          ),
        ),
      );

  Widget buildFilters({
    required final HomeController controller,
    required final HomeModel model,
  }) =>
      Builder(
        builder: (final BuildContext context) => Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              buildSingleFilterChip(
                text: 'ui.home_view.filters.tags'.tr(),
                controller: controller,
                selectedFilters: model.allTags
                    .filter(
                      (final HomeModelFilter filter) => filter.isSelected,
                    )
                    .toList(),
                widgetToOpenOnClick: Container(), //TODO: buildDialogTags(),
              ),
              const SizedBox(width: 8),
              buildSingleFilterChip(
                text: 'ui.home_view.filters.cuisines'.tr(),
                controller: controller,
                selectedFilters: model.allCuisines
                    .filter(
                      (final HomeModelFilter filter) => filter.isSelected,
                    )
                    .toList(),
                widgetToOpenOnClick: Container(), //TODO: buildDialogCuisines(),
              ),
            ],
          ),
        ),
      );

  Widget buildSingleFilterChip({
    required final String text,
    required final List<HomeModelFilter> selectedFilters,
    required final HomeController controller,
    required final Widget widgetToOpenOnClick,
  }) =>
      FilterChip(
        label: Text(
          selectedFilters.isEmpty
              ? text
              : 'ui.home_view.filters.name_with_amount'.tr(
                  namedArgs: <String, String>{
                    'name': text,
                    'amount': selectedFilters.length.toString(),
                  },
                ),
        ),
        selected: selectedFilters.isNotEmpty,
        onSelected: (final _) {
          controller.openDialog(child: widgetToOpenOnClick);
        },
      );

  Widget _buildRecipesList({
    required final HomeController controller,
    required final HomeModel model,
  }) =>
      Column(
        children: <Widget>[
          Expanded(
            child: PageStorage(
              bucket: pageStorageBucket,
              child: PagedListView<int, HomeModelRecipe>(
                padding: EdgeInsets.zero,
                key: const PageStorageKey<String>('recipes'),
                pagingController: model.pagingController,
                builderDelegate: PagedChildBuilderDelegate<HomeModelRecipe>(
                  itemBuilder: (
                    final BuildContext context,
                    final HomeModelRecipe recipe,
                    final _,
                  ) =>
                      _buildRecipeCardItem(
                    recipe: recipe,
                    model: model,
                    controller: controller,
                    cuisines: model.allCuisines,
                  ),
                  noItemsFoundIndicatorBuilder: (final _) =>
                      buildNoItemsFoundIcon(
                    message: 'ui.home_view.empty_states.no_recipes'.tr(),
                  ),
                  noMoreItemsIndicatorBuilder: (final _) => Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        'ui.home_view.empty_states.no_more_recipes'.tr(),
                      ),
                    ),
                  ),
                  firstPageErrorIndicatorBuilder: (final _) => Column(
                    children: <Widget>[
                      const SizedBox(height: 64),
                      buildNoItemsFoundIcon(
                        message: 'ui.home_view.error_states.no_recipes'.tr(),
                      ),
                      const SizedBox(height: 8),
                      _buildTryFetchingRecipesAgainButton(
                        controller: controller,
                      ),
                    ],
                  ),
                  newPageErrorIndicatorBuilder: (final _) => Column(
                    children: <Widget>[
                      const SizedBox(height: 8),
                      Builder(
                        builder: (final BuildContext context) => Text(
                          'ui.home_view.error_states.no_more_recipes'.tr(),
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                      const SizedBox(height: 8),
                      _buildTryFetchingRecipesAgainButton(
                        controller: controller,
                      ),
                    ],
                  ),
                  firstPageProgressIndicatorBuilder: (final _) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  newPageProgressIndicatorBuilder: (final _) => const Column(
                    children: <Widget>[
                      SizedBox(height: 16),
                      CircularProgressIndicator(),
                      SizedBox(height: 8),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      );

  ElevatedButton _buildTryFetchingRecipesAgainButton({
    required final HomeController controller,
  }) =>
      ElevatedButton.icon(
        onPressed: controller.fetchRecipes,
        icon: const Icon(Icons.refresh),
        label: Text('ui.home_view.buttons.try_again'.tr()),
      );

  Widget _buildRecipeCardItem({
    required final HomeModelRecipe recipe,
    required final List<HomeModelFilterCuisine> cuisines,
    required final HomeController controller,
    required final HomeModel model,
  }) =>
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Stack(
          children: <Widget>[
            Card(
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              child: Material(
                type: MaterialType.transparency,
                color: Colors.transparent,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
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
                        tags: model.allTags,
                        cuisines: model.allCuisines,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(22),
                child: cuisines
                    .filter(
                      (final HomeModelFilterCuisine element) =>
                          recipe.cuisineIds.contains(element.id),
                    )
                    .map<Widget>(
                      (final HomeModelFilterCuisine tag) => Chip(
                        label: Text(tag.displayedName),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                    )
                    .firstOption
                    .getOrElse(() => const SizedBox.shrink()),
              ),
            ),
            Positioned.fill(
              child: Material(
                type: MaterialType.transparency,
                child: InkWell(
                  borderRadius: BorderRadius.circular(24),
                  onTap: () =>
                      controller.goToSingleRecipeView(recipeId: recipe.id),
                  child: Container(),
                ),
              ),
            ),
          ],
        ),
      );

  Widget buildRecipeCardItemDescription({
    required final HomeModelRecipe recipe,
    required final List<HomeModelFilterTag> tags,
    required final List<HomeModelFilterCuisine> cuisines,
  }) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
            title: Text(recipe.displayedAttributes.name),
            subtitle: Text(recipe.displayedAttributes.headline),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Wrap(
              spacing: 4,
              runSpacing: 4,
              children: tags
                  .filter(
                    (final HomeModelFilterTag element) =>
                        recipe.tagIds.contains(element.id),
                  )
                  .map(
                    (final HomeModelFilterTag tag) => SizedBox(
                      height: 24,
                      child: FittedBox(
                        child: Chip(
                          label: Text(tag.displayedName),
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      );
}

// Widget buildDialogTags() => Consumer(
//       builder: (final _, final WidgetRef ref, final __) => buildDialog(
//         children: ref
//             .watch(providers.homeControllerProvider)
//             .allTags
//             .filter(
//               (final HomeModelFilterTag tag) =>
//                   tag.numberOfRecipes.getOrElse(() => 0) > 0,
//             )
//             .map(
//               (final HomeModelFilterTag tag) => ChoiceChip(
//                 label: Text(
//                   '${tag.displayedName} (${tag.numberOfRecipes.fold(
//                     () => '',
//                     (final int number) => number < 1 ? '' : '$number',
//                   )})',
//                 ),
//                 selected: tag.isSelected,
//                 onSelected: (final bool selected) => ref
//                     .watch(providers.homeControllerProvider.notifier)
//                     .setTagSelected(
//                       tagId: tag.id,
//                       selected: selected,
//                     ),
//               ),
//             )
//             .toList(),
//       ),
//     );

// Widget buildDialogCuisines() => Consumer(
//       builder: (final _, final WidgetRef ref, final __) => buildDialog(
//         children: ref
//             .watch(providers.homeControllerProvider)
//             .allCuisines
//             .filter(
//               (final HomeModelFilterCuisine cuisine) =>
//                   cuisine.numberOfRecipes.getOrElse(() => 0) > 0,
//             )
//             .map(
//               (final HomeModelFilterCuisine cuisine) => Tooltip(
//                 message: cuisine.toString(),
//                 child: ChoiceChip(
//                   label: Text(
//                     '${cuisine.displayedName} (${cuisine.numberOfRecipes.fold(
//                       () => '',
//                       (final int number) => number < 1 ? '' : '$number',
//                     )})',
//                   ),
//                   selected: cuisine.isSelected,
//                   onSelected: ref
//                           .watch(providers.homeControllerProvider)
//                           .allCuisines
//                           .any(
//                             (final HomeModelFilterCuisine element) =>
//                                 element.isSelected && element.id != cuisine.id,
//                           )
//                       ? null
//                       : (final bool selected) => ref
//                           .watch(providers.homeControllerProvider.notifier)
//                           .setCuisineSelected(
//                             cuisineId: cuisine.id,
//                             selected: selected,
//                           ),
//                 ),
//               ),
//             )
//             .toList(),
//       ),
//     );

Widget buildDialog({
  required final List<Widget> children,
}) =>
    Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Wrap(
          spacing: 8,
          runSpacing: 8,
          children: children,
        ),
      ),
    );

abstract class HomeController implements MvcController {
  void fetchRecipes();
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
