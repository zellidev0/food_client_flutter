import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_model.freezed.dart';

@freezed
class MainModel with _$MainModel {
  const factory MainModel({
    required final int bottomNavigationBarIndex,
  }) = _MainModel;
}
