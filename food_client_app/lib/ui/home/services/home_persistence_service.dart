import 'package:food_client/commons/error.dart';
import 'package:fpdart/fpdart.dart';

abstract class HomePersistenceService {
  TaskEither<MyError, void> addRecipeOpeningToHistory({
    required final String recipeId,
    required final String recipeTitle,
    required final Option<Uri> imagePath,
    required final DateTime createdAt,
  });
}
