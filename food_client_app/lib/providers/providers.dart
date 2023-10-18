import 'package:beamer/beamer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/services/app_settings_service/app_settings_service.dart';
import 'package:food_client/services/app_settings_service/app_settings_service_model.dart';
import 'package:food_client/services/logging_service/logging_service.dart';
import 'package:food_client/services/web_client/web_client_service.dart';
import 'package:food_client/services/web_image_sizer/web_image_sizer_service.dart';

class Providers {
  StateNotifierProvider<AppSettingsServiceAggregator, AppSettingsServiceModel>
      appSettingsServiceProvider = StateNotifierProvider<
          AppSettingsServiceAggregator, AppSettingsServiceModel>(
    (
      StateNotifierProviderRef<AppSettingsServiceAggregator,
              AppSettingsServiceModel>
          ref,
    ) =>
        AppSettingsService(
      const AppSettingsServiceModel(
        recipeLocales: <Locale>[Locale('DE')],
        combineIngredients: true,
      ),
    ),
  );
}

late Providers providers;

BeamPageType determinePageType() => defaultTargetPlatform == TargetPlatform.iOS
    ? BeamPageType.cupertino
    : BeamPageType.material;
