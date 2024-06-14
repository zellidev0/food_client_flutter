import 'package:flutter/material.dart';
import 'package:food_client/mvc.dart';

abstract class HomeController implements MvcController {
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
