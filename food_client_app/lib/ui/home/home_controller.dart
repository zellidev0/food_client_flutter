import 'package:flutter/material.dart';

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
