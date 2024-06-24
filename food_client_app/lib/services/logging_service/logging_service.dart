import 'package:bloc/bloc.dart';
import 'package:food_client/pages/common/error.dart';
import 'package:fpdart/fpdart.dart';
import 'package:logger/logger.dart' as nice_logger;
import 'package:logging/logging.dart';

abstract class LoggingService {
  void info({required final String message});
  void warning({required final String message});
  void error(final MyError error);
}

class LoggingServiceImplementation extends Cubit<Unit>
    implements LoggingService {
  final Logger _logger;
  final nice_logger.Logger niceLogger = nice_logger.Logger();

  LoggingServiceImplementation({
    required final String loggerName,
  })  : _logger = Logger(loggerName),
        super(unit) {
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen(
      (LogRecord record) => switch (record.level) {
        Level.SEVERE => niceLogger.e,
        Level.WARNING => niceLogger.w,
        Level.INFO => niceLogger.i,
        Level() => niceLogger.t
      }(record.message),
    );
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
