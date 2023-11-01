import 'dart:developer';

import 'package:food_client/commons/error.dart';
import 'package:logging/logging.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'logging_service.g.dart';

abstract class LoggingService {
  void info({required final String message});
  void warning({required final String message});
  void error(final MyError error);
}

@riverpod
LoggingService loggingService(
  final LoggingServiceRef ref, {
  required final String loggerName,
}) =>
    LoggingServiceImplementation(loggerName: loggerName);

class LoggingServiceImplementation implements LoggingService {
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
  void error(final MyError error) => _logger.severe(
        error.message,
        error.originalError,
        error.stackTrace,
      );

  @override
  void info({required String message}) => _logger.info(message);

  @override
  void warning({required String message}) => _logger.warning(message);
}
