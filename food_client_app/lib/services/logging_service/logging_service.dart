import 'package:flutter/foundation.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_logging_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'logging_service.g.dart';

abstract class LoggingServiceAggregator
    implements IngredientsSortingLoggingService {
  LoggingServiceAggregator();
}

@riverpod
LoggingServiceAggregator loggingService(final LoggingServiceRef ref) =>
    LoggingService();

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
      print('Error: $message\n$exception');
    }
  }
}
