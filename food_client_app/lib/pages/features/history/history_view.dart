import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/generated/locale_keys.g.dart';
import 'package:food_client/pages/common/empty_view_content.dart';
import 'package:food_client/pages/common/view_state.dart';
import 'package:food_client/pages/features/history/cubit/history_cubit.dart';
import 'package:food_client/pages/features/history/cubit/history_state.dart';
import 'package:food_client/pages/features/history/widgets/history_view_recipe_list_item.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) => SafeArea(
        bottom: false,
        top: false,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            scrolledUnderElevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: context.read<HistoryCubit>().goBack,
            ),
          ),
          body: BlocBuilder<HistoryCubit, HistoryState>(
            buildWhen: (HistoryState previous, HistoryState current) =>
                previous.recipes != current.recipes,
            builder: (BuildContext context, HistoryState state) =>
                state.recipes.map(
              data: (ViewStateData<List<HistoryStateRecipe>> recipes) => recipes
                      .data.isEmpty
                  ? const Padding(
                      padding: EdgeInsets.all(32),
                      child: Center(
                        child: EmptyViewContent(
                          message:
                              'No items yet, open some recipes to find your history here',
                        ),
                      ),
                    )
                  : ListView.separated(
                      itemCount: recipes.data.length,
                      itemBuilder: (BuildContext context, int index) =>
                          HistoryViewRecipeListItem(
                        createdAt: recipes.data[index].createdAt,
                        recipeTitle: recipes.data[index].title,
                        recipeImageUrl: recipes.data[index].imageUri,
                        onTap: () =>
                            context.read<HistoryCubit>().goToSingleRecipeView(
                                  recipeId: recipes.data[index].id,
                                ),
                      ),
                      separatorBuilder: (_, __) => const SizedBox(height: 8),
                    ),
              error: (_) => Center(
                child: Card(
                  child: Text(LocaleKeys.ui_history_view_error.tr()),
                ),
              ),
              loading: (_) => const Center(child: CircularProgressIndicator()),
            ),
          ),
        ),
      );
}
