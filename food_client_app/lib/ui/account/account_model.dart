import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_model.freezed.dart';

@freezed
class AccountModel with _$AccountModel {
  const factory AccountModel() = _AccountModel;
}
