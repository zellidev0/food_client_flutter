import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/services/app_settings_service/app_settings_service_model.dart';
import 'package:food_client/ui/home/home_recipe_language_service.dart';

abstract class AppSettingsServiceAggregator
    extends StateNotifier<AppSettingsServiceModel>
    implements HomeAppSettingsService {
  AppSettingsServiceAggregator(super.state);
}

class AppSettingsService extends AppSettingsServiceAggregator {
  AppSettingsService(super.state);

  @override
  List<String> getSupportedRecipeLanguages() => <String>['DE'];
}
