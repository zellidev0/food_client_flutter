import 'package:food_client/pages/common/error.dart';
import 'package:food_client/services/persistence_service/general_persisnence_service.dart';
import 'package:fpdart/fpdart.dart';

abstract class HomePersistenceService extends GeneralPersistenceService {
  TaskEither<MyError, void> addRecipeOpeningToHistory({
    required final String recipeId,
    required final String recipeTitle,
    required final Option<Uri> imagePath,
    required final DateTime createdAt,
  });
}
