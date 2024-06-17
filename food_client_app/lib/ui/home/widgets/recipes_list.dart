import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/commons/empty_view_content.dart';
import 'package:food_client/generated/locale_keys.g.dart';
import 'package:food_client/ui/home/home_controller.dart';
import 'package:food_client/ui/home/home_model.dart';
import 'package:food_client/ui/home/home_providers.dart';
import 'package:food_client/ui/home/home_view.dart';
import 'package:food_client/ui/home/widgets/recipe_card_item.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class RecipesList extends ConsumerWidget {
  const RecipesList({
    super.key,
    required this.controller,
    required this.model,
  });

  final HomeController controller;
  final HomeModel model;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<HomeModelFilter> filters =
        ref.watch(homeModelFiltersProvider).map(
              data: (_) => _.data,
              error: (_) => <HomeModelFilter>[],
              loading: (_) => <HomeModelFilter>[],
            );

    return PageStorage(
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
              RecipeCardItem(
            recipe: recipe,
            availableFilters: filters,
            allCuisines: filters.whereType<HomeModelFilterCuisine>().toList(),
            onTap: () => controller.goToSingleRecipeView(
              recipeId: recipe.id,
              recipeTitle: recipe.displayedAttributes.name,
              imagePath: recipe.imageUri,
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
                message:
                    LocaleKeys.ui_home_view_error_states_fetching_recipes.tr(),
              ),
              const SizedBox(height: 8),
              ElevatedButton.icon(
                onPressed: controller.retryLastRecipeFetching,
                icon: const Icon(Icons.refresh),
                label: Text(LocaleKeys.ui_home_view_buttons_try_again.tr()),
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
              ElevatedButton.icon(
                onPressed: controller.retryLastRecipeFetching,
                icon: const Icon(Icons.refresh),
                label: Text(LocaleKeys.ui_home_view_buttons_try_again.tr()),
              ),
            ],
          ),
          firstPageProgressIndicatorBuilder: (final _) => const Center(
            child: CircularProgressIndicator(),
          ),
          newPageProgressIndicatorBuilder: (final _) => const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
