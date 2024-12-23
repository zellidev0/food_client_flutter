import 'package:flutter/material.dart';
import 'package:food_client/commons/empty_view_content.dart';
import 'package:food_client/my_scaffold.dart';
import 'package:food_client/ui/history/history_model.dart';
import 'package:food_client/ui/history/widgets/history_view_recipe_list_item.dart';

class HistoryView extends StatelessWidget {
  final HistoryController controller;
  final HistoryModel model;

  const HistoryView({
    required this.controller,
    required this.model,
    super.key,
  });

  @override
  Widget build(final BuildContext context) =>
      MyScaffold<List<HistoryModelRecipe>>(
        state: model.recipes,
        errorText: 'An Error occured while loading, please try again later',
        onAppBarBackPressed: controller.goBack,
        child: (List<HistoryModelRecipe> data) => data.isEmpty
            ? buildEmptyState()
            : ListView.separated(
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index) =>
                    HistoryViewRecipeListItem(
                  createdAt: data[index].createdAt,
                  recipeTitle: data[index].title,
                  recipeImageUrl: data[index].imageUri,
                  onTap: () => controller.goToSingleRecipeView(
                    recipeId: data[index].id,
                  ),
                ),
                separatorBuilder: (_, __) => const SizedBox(height: 8),
              ),
      );

  Padding buildEmptyState() => const Padding(
        padding: EdgeInsets.all(32),
        child: Center(
          child: EmptyViewContent(
            message:
                'No items yet, open some recipes to find your history here',
          ),
        ),
      );
}

abstract class HistoryController {
  void goToSingleRecipeView({required final String recipeId});
  void goBack();
}
