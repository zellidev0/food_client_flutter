import 'package:beamer/beamer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/services/app_settings_service/app_settings_service.dart';
import 'package:food_client/services/app_settings_service/app_settings_service_model.dart';
import 'package:food_client/services/logging_service/logging_service.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/services/persistence_service/persistence_service.dart';
import 'package:food_client/services/persistence_service/persistence_service_model.dart';
import 'package:food_client/services/web_client/web_client_service.dart';
import 'package:food_client/services/web_image_sizer/web_image_sizer_service.dart';
import 'package:food_client/ui/single_recipe/single_recipe_controller.dart';
import 'package:food_client/ui/single_recipe/single_recipe_model.dart';
import 'package:food_client/ui/single_recipe/single_recipe_view.dart';
import 'package:fpdart/fpdart.dart';

class Providers {
  StateNotifierProvider<PersistenceServiceAggregator, PersistenceServiceModel>
      persistenceServiceProvider = StateNotifierProvider<
          PersistenceServiceAggregator, PersistenceServiceModel>(
    (
      StateNotifierProviderRef<PersistenceServiceAggregator,
              PersistenceServiceModel>
          ref,
    ) =>
        PersistenceService(),
  );

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

  Provider<WebClientServiceAggregator> webClientServiceProvider =
      Provider<WebClientServiceAggregator>(
    (ProviderRef<WebClientServiceAggregator> ref) => WebClientService(),
  );

  Provider<WebImageSizerServiceAggregator> webImageSizerServiceProvider =
      Provider<WebImageSizerServiceAggregator>(
    (ProviderRef<WebImageSizerServiceAggregator> ref) => WebImageSizerService(),
  );

  Provider<LoggingServiceAggregator> loggingServiceProvider =
      Provider<LoggingServiceAggregator>(
    (ProviderRef<LoggingServiceAggregator> ref) => LoggingService(),
  );
}

late Providers providers;

BeamPageType determinePageType() => defaultTargetPlatform == TargetPlatform.iOS
    ? BeamPageType.cupertino
    : BeamPageType.material;
