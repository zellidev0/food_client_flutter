import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/services/app_settings_service/app_settings_service_model.dart';

abstract class AppSettingsServiceAggregator
    extends StateNotifier<AppSettingsServiceModel> {
  AppSettingsServiceAggregator(super.state);
}

class AppSettingsService extends AppSettingsServiceAggregator {
  AppSettingsService(super.state);
}
