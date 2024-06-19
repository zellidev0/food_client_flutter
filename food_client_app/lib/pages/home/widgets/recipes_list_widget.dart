import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/generated/locale_keys.g.dart';
import 'package:food_client/pages/common/empty_view_content.dart';
import 'package:food_client/pages/common/view_state.dart';
import 'package:food_client/pages/home/cubit/home_cubit.dart';
import 'package:food_client/pages/home/cubit/home_state.dart';
import 'package:food_client/pages/home/home_view.dart';
import 'package:food_client/pages/home/widgets/recipe_card_item_widget.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class RecipesListWidget extends StatelessWidget {
  const RecipesListWidget({super.key});

  @override
  Widget build(BuildContext context) => PageStorage(
        bucket: pageStorageBucket,
        child: PagedListView<int, HomeStateRecipe>(
          padding: EdgeInsets.zero,
          key: const PageStorageKey<String>('recipes'),
          pagingController:
              context.read<HomeCubit>().state.paginationController,
          builderDelegate: PagedChildBuilderDelegate<HomeStateRecipe>(
            itemBuilder: (
              final BuildContext context,
              final HomeStateRecipe recipe,
              final _,
            ) =>
                BlocBuilder<HomeCubit, HomeState>(
              buildWhen: (previous, current) =>
                  previous.availableFilters != current.availableFilters,
              builder: (BuildContext context, HomeState state) =>
                  state.availableFilters.map(
                data: (ViewStateData<List<HomeStateFilter>> filters) =>
                    RecipeCardItemWidget(
                  recipe: recipe,
                  cuisines: filters.map(
                    data: (ViewStateData<List<HomeStateFilter>> data) =>
                        data.data.whereType<HomeStateFilterCuisine>().toList(),
                    error: (_) => <HomeStateFilterCuisine>[],
                    loading: (_) => <HomeStateFilterCuisine>[],
                  ),
                ),
                error: (_) => const SizedBox.shrink(),
                loading: (_) => const CircularProgressIndicator(),
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
                ElevatedButton.icon(
                  onPressed: context.read<HomeCubit>().retryLastRecipeFetching,
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
                  onPressed: context.read<HomeCubit>().retryLastRecipeFetching,
                  icon: const Icon(Icons.refresh),
                  label: Text(LocaleKeys.ui_home_view_buttons_try_again.tr()),
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
}
