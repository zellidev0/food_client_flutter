import 'package:food_client/commons/view_state.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_model.freezed.dart';

@freezed
class HistoryModel with _$HistoryModel {
  const factory HistoryModel({
    required final ViewState<List<HistoryModelRecipe>> recipes,
  }) = _HistoryModel;
}

@freezed
class HistoryModelRecipe with _$HistoryModelRecipe {
  const factory HistoryModelRecipe({
    required final String id,
    required final String title,
    required final Option<Uri> imageUri,
    required final String createdAt,
  }) = _HistoryModelRecipe;
}
