import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:food_client/commons/empty_view_content.dart';
import 'package:food_client/commons/view_state.dart';
import 'package:food_client/commons/widgets.dart';
import 'package:food_client/generated/locale_keys.g.dart';
import 'package:food_client/ui/home/home_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

final PageStorageBucket pageStorageBucket = PageStorageBucket();

class HomeView extends StatelessWidget {
  final HomeController controller;
  final HomeModel model;
  const HomeView({
    super.key,
    required this.controller,
    required this.model,
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
        builder: (final BuildContext context) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.history),
              onPressed: controller.goToHistoryView,
            ),
            Expanded(child: Container()),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                buildSingleFilterChip(
                  text: LocaleKeys.ui_home_view_filters_tags.tr(),
                  controller: controller,
                  selectedFilters: model.availableFilters.mapData(
                    (List<HomeModelFilter> data) => data
                        .filter(
                          (final HomeModelFilter filter) =>
                              filter is HomeModelFilterTag && filter.isSelected,
                        )
                        .toList(),
                  ),
                  widgetToOpenOnClick: model.availableFilters.maybeWhen(
                    data: (List<HomeModelFilter> filters) => some(
                      buildFilterDialog(
                        filters:
                            filters.whereType<HomeModelFilterTag>().toList(),
                      ),
                    ),
                    orElse: () => const None<Widget>(),
                  ),
                ),
                const SizedBox(width: 8),
                buildSingleFilterChip(
                  text: LocaleKeys.ui_home_view_filters_cuisines.tr(),
                  controller: controller,
                  selectedFilters: model.availableFilters.mapData(
                    (List<HomeModelFilter> data) => data
                        .filter(
                          (final HomeModelFilter filter) =>
                              filter is HomeModelFilterCuisine &&
                              filter.isSelected,
                        )
                        .toList(),
                  ),
                  widgetToOpenOnClick: model.availableFilters.maybeWhen(
                    data: (List<HomeModelFilter> filters) => some(
                      buildFilterDialog(
                        filters: filters
                            .whereType<HomeModelFilterCuisine>()
                            .toList(),
                      ),
                    ),
                    orElse: () => const None<Widget>(),
                  ),
                ),
              ],
            ),
          ],
        ),
      );

  Widget buildSingleFilterChip({
    required final String text,
    required final ViewState<List<HomeModelFilter>> selectedFilters,
    required final HomeController controller,
    required final Option<Widget> widgetToOpenOnClick,
  }) =>
      FilterChip(
        label: selectedFilters.map(
          data: (ViewStateData<List<HomeModelFilter>> data) => Text(
            data.data.isEmpty
                ? text
                : LocaleKeys.ui_home_view_filters_name_with_amount.tr(
                    namedArgs: <String, String>{
                      'name': text,
                      'amount': data.data.length.toString(),
                    },
                  ),
          ),
          error: (_) => const CircularProgressIndicator(),
          loading: (_) => const CircularProgressIndicator(),
        ),
        selected: selectedFilters.map(
          data: (ViewStateData<List<HomeModelFilter>> data) =>
              data.data.isNotEmpty,
          error: (_) => false,
          loading: (_) => false,
        ),
        onSelected: widgetToOpenOnClick
            .map(
              (Widget widget) =>
                  (final _) => controller.openDialog(child: widget),
            )
            .toNullable(),
      );

  Widget _buildRecipesList({
    required final HomeController controller,
    required final HomeModel model,
  }) =>
      PageStorage(
        bucket: pageStorageBucket,
        child: PagedListView<int, HomeModelRecipe>(
          padding: EdgeInsets.zero,
          key: const PageStorageKey<String>('recipes'),
          pagingController: model.paginationController,
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
              cuisines: model.availableFilters.map(
                data: (ViewStateData<List<HomeModelFilter>> data) =>
                    data.data.whereType<HomeModelFilterCuisine>().toList(),
                error: (_) => <HomeModelFilterCuisine>[],
                loading: (_) => <HomeModelFilterCuisine>[],
              ),
            ),
            noItemsFoundIndicatorBuilder: (final _) => EmptyViewContent(
              message: LocaleKeys.ui_home_view_empty_states_no_recipes.tr(),
            ),
            noMoreItemsIndicatorBuilder: (final _) => Center(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  LocaleKeys.ui_home_view_empty_states_no_more_recipes.tr(),
                ),
              ),
            ),
            firstPageErrorIndicatorBuilder: (final _) => Column(
              children: <Widget>[
                const SizedBox(height: 64),
                EmptyViewContent(
                  message: LocaleKeys.ui_home_view_error_states_fetching_recipes
                      .tr(),
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
                    LocaleKeys.ui_home_view_error_states_fetchin_more_recipes
                        .tr(),
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
      );

  ElevatedButton _buildTryFetchingRecipesAgainButton({
    required final HomeController controller,
  }) =>
      ElevatedButton.icon(
        onPressed: controller.retryLastRecipeFetching,
        icon: const Icon(Icons.refresh),
        label: Text(LocaleKeys.ui_home_view_buttons_try_again.tr()),
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
                        tags: model.availableFilters.map(
                          data: (ViewStateData<List<HomeModelFilter>> data) =>
                              data.data
                                  .whereType<HomeModelFilterTag>()
                                  .toList(),
                          error: (_) => <HomeModelFilterTag>[],
                          loading: (_) => <HomeModelFilterTag>[],
                        ),
                        cuisines: model.availableFilters.map(
                          data: (ViewStateData<List<HomeModelFilter>> data) =>
                              data.data
                                  .whereType<HomeModelFilterCuisine>()
                                  .toList(),
                          error: (_) => <HomeModelFilterCuisine>[],
                          loading: (_) => <HomeModelFilterCuisine>[],
                        ),
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
                  onTap: () => controller.goToSingleRecipeView(
                    recipeId: recipe.id,
                    recipeTitle: recipe.displayedAttributes.name,
                    imagePath: recipe.imageUri,
                  ),
                  child: Container(),
                ),
              ),
            ),
          ],
        ),
      );

  Widget buildFilterDialog({
    required final List<HomeModelFilter> filters,
  }) =>
      buildDialog(
        children: filters
            .filter(
              (final HomeModelFilter filter) =>
                  filter.numberOfRecipes.getOrElse(() => 0) > 0,
            )
            .map(
              (final HomeModelFilter filter) => ChoiceChip(
                label: Text(
                  '${filter.displayedName} (${filter.numberOfRecipes.fold(
                    () => '',
                    (final int number) => number < 1 ? '' : '$number',
                  )})',
                ),
                selected: filter.isSelected,
                onSelected: (final bool selected) =>
                    controller.setFiltersSelected(
                  filterId: filter.id,
                  isSelected: selected,
                ),
              ),
            )
            .toList(),
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

abstract class HomeController {
  void retryLastRecipeFetching();
  void setFiltersSelected({
    required final String filterId,
    required final bool isSelected,
  });
  void goToSingleRecipeView({
    required final String recipeId,
    required final String recipeTitle,
    required final Uri imagePath,
  });
  void openDialog({required final Widget child});
  void goToHistoryView();
}
