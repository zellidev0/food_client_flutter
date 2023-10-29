abstract class HomeLoggingService {
  void info({required final String message});
  void warning({required final String message});
  void error({
    required final String message,
    final Object? error,
    final StackTrace? stacktrace,
  });
}
