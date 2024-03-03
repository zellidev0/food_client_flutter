import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/services/app_settings_service/app_settings_service_model.dart';

abstract class AppSettingsServiceAggregator {}

abstract class AppSettingsService extends Cubit<AppSettingsServiceModel>
    implements AppSettingsServiceAggregator {
  AppSettingsService(super.state);
}
