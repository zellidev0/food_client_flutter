import 'package:flutter/widgets.dart';
import 'package:food_client/services/app_settings_service/app_settings_service.dart';
import 'package:food_client/services/app_settings_service/app_settings_service_model.dart';

class InMemoryAppSettingsService extends AppSettingsService {
  static final InMemoryAppSettingsService _instance =
      InMemoryAppSettingsService._();

  InMemoryAppSettingsService._()
      : super(
          const AppSettingsServiceModel(
            recipeLocales: <Locale>[Locale('DE')],
            combineIngredients: true,
          ),
        );

  factory InMemoryAppSettingsService.instance() => _instance;
}
