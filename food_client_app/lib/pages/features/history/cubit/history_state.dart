import 'package:food_client/pages/common/view_state.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_state.freezed.dart';

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState({
    required final ViewState<List<HistoryStateRecipe>> recipes,
  }) = _HistoryState;
}

@freezed
class HistoryStateRecipe with _$HistoryStateRecipe {
  const factory HistoryStateRecipe({
    required final String id,
    required final String title,
    required final Option<Uri> imageUri,
    required final String createdAt,
  }) = _HistoryStateRecipe;
}
