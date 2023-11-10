import 'package:flutter/material.dart';
import 'package:food_client/mvc.dart';
import 'package:food_client/my_scaffold.dart';
import 'package:food_client/ui/history/history_model.dart';
import 'package:food_client/ui/history/widgets/history_view_recipe_list_item.dart';

class HistoryView extends MvcView<HistoryController, HistoryModel> {
  const HistoryView({
    required super.controller,
    required super.model,
    super.key,
  });

  @override
  Widget build(final BuildContext context) =>
      MyScaffold<List<HistoryModelRecipe>>(
        state: model.recipes,
        errorText: 'TODO', //TODO: do this
        onAppBarBackPressed: controller.goBack,
        child: (List<HistoryModelRecipe> data) => ListView.separated(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) =>
              HistoryViewRecipeListItem(
            recipeTitle: data[index].title,
            recipeImageUrl: data[index].imageUri,
            onTap: () => controller.goToSingleRecipeView(
              recipeId: data[index].id,
            ),
          ),
          separatorBuilder: (_, __) => const SizedBox(height: 8),
        ),
      );
}

abstract class HistoryController implements MvcController {
  void goToSingleRecipeView({required final String recipeId});
  void goBack();
}
