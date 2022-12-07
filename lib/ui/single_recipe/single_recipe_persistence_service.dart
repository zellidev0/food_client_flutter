import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_recipe_persistence_service.freezed.dart';

abstract class SingleRecipePersistenceService {
  Task<void> addIngredient({
    required final SingleRecipePersistenceServiceIngredient ingredient,
  });
  bool hasSavedIngredient({
    required final String ingredientId,
  });
  Task<void> removeIngredient({
    required final String ingredientId,
  });
}

@freezed
class SingleRecipePersistenceServiceIngredient
    with _$SingleRecipePersistenceServiceIngredient {
  const factory SingleRecipePersistenceServiceIngredient({
    required final bool isTickedOff,
    required final String recipeId,
    required final Option<Uri> imageUrl,
    required final String id,
    required final String slug,
    required final String displayedName,
    required final Option<double> amount,
    required final Option<String> unit,
  }) = _SingleRecipePersistenceServiceIngredient;
}
