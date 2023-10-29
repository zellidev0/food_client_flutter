import 'dart:ui';

import 'package:food_client/services/app_settings_service/app_settings_service_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_settings_service.g.dart';

abstract class AppSettingsServiceAggregator {}

@riverpod
class AppSettingsService extends _$AppSettingsService
    implements AppSettingsServiceAggregator {
  @override
  AppSettingsServiceModel build() => const AppSettingsServiceModel(
        recipeLocales: <Locale>[Locale('DE')],
        combineIngredients: true,
      );
}
