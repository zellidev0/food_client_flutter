import 'package:flutter/foundation.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_logging_service.dart';

abstract class LoggingServiceAggregator
    implements IngredientsSortingLoggingService {
  LoggingServiceAggregator();
}

class LoggingService extends LoggingServiceAggregator {
  LoggingService();

  @override
  void logDebug({required final String message}) {
    if (kDebugMode) {
      print('Info: $message');
    }
  }

  @override
  void logError({
    required final String message,
    required final Exception exception,
  }) {
    if (kDebugMode) {
      print('Error: $message\n${exception.toString()}');
    }
  }
}
