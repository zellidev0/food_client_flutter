import 'package:food_client/commons/error.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_persistence_service.freezed.dart';

abstract class HistoryPersistenceService {
  TaskEither<MyError, List<HistoryPersistenceServiceModelRecipe>>
      getHistoryRecipes();
}

@freezed
class HistoryPersistenceServiceModelRecipe
    with _$HistoryPersistenceServiceModelRecipe {
  const factory HistoryPersistenceServiceModelRecipe({
    required final String recipeId,
    required final String title,
    required final Option<Uri> imagePath,
    required final HistoryPersistenceServiceModelOrigin origin,
    required final DateTime createdAt,
  }) = _HistoryPersistenceServiceModelRecipe;
}

@freezed
class HistoryPersistenceServiceModelOrigin
    with _$HistoryPersistenceServiceModelOrigin {
  const factory HistoryPersistenceServiceModelOrigin.clicked() =
      HistoryPersistenceServiceModelOriginClicked;
}
