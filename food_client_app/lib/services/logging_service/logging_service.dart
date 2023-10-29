import 'dart:developer';

import 'package:food_client/ui/home/services/home_logging_service.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_logging_service.dart';
import 'package:logging/logging.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'logging_service.g.dart';

abstract class LoggingServiceAggregator
    implements HomeLoggingService, IngredientsSortingLoggingService {}

@riverpod
LoggingServiceAggregator loggingService(
  final LoggingServiceRef ref, {
  required final String loggerName,
}) =>
    LoggingServiceImplementation(loggerName: loggerName);

class LoggingServiceImplementation implements LoggingServiceAggregator {
  final Logger _logger;

  LoggingServiceImplementation({
    required final String loggerName,
  }) : _logger = Logger(loggerName) {
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((LogRecord record) {
      log('${record.level.name}: ${record.time}: ${record.message}');
    });
  }

  @override
  void error({
    required String message,
    Object? error,
    StackTrace? stacktrace,
  }) =>
      _logger.severe(message, error, stacktrace);

  @override
  void info({required String message}) => _logger.info(message);

  @override
  void warning({required String message}) => _logger.warning(message);
}
