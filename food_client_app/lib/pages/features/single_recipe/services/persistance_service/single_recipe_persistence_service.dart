import 'package:food_client/services/persistence_service/general_persisnence_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_recipe_persistence_service.freezed.dart';

abstract class SingleRecipePersistenceService
    extends GeneralPersistenceService {
  bool isInShoppingCart({
    required final String recipeId,
    required final int servings,
  });
  Task<void> addRecipe({
    required final SingleRecipePersistenceServiceRecipe recipe,
  });
}

@freezed
class SingleRecipePersistenceServiceRecipe
    with _$SingleRecipePersistenceServiceRecipe {
  const factory SingleRecipePersistenceServiceRecipe({
    required final List<SingleRecipePersistenceServiceIngredient> ingredients,
    required final Option<Uri> imagePath,
    required final String recipeId,
    required final String title,
    required final int servings,
  }) = _SingleRecipePersistenceServiceRecipe;
}

@freezed
class SingleRecipePersistenceServiceIngredient
    with _$SingleRecipePersistenceServiceIngredient {
  const factory SingleRecipePersistenceServiceIngredient({
    required final bool isTickedOff,
    required final Option<Uri> imageUrl,
    required final String ingredientId,
    required final String slug,
    required final String displayedName,
    required final Option<double> amount,
    required final Option<String> unit,
    required final Option<SingleRecipePersistenceServiceIngredientFamily>
        family,
  }) = _SingleRecipePersistenceServiceIngredient;
}

@freezed
class SingleRecipePersistenceServiceIngredientFamily
    with _$SingleRecipePersistenceServiceIngredientFamily {
  const factory SingleRecipePersistenceServiceIngredientFamily({
    required final String id,
    required final String type,
    required final Option<String> iconPath,
    required final String name,
    required final String slug,
  }) = _SingleRecipePersistenceServiceIngredientFamily;
}
