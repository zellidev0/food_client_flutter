import 'dart:ui';

import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings_service_model.freezed.dart';

@freezed
class AppSettingsServiceModel with _$AppSettingsServiceModel {
  const factory AppSettingsServiceModel({
    required final List<Locale> recipeLocales,
  }) = _AppSettingsServiceModel;
}
