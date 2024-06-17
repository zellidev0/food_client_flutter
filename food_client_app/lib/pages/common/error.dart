class MyError {
  final String message;
  final Object? originalError;
  final StackTrace? stackTrace;

  MyError({
    required this.message,
    this.stackTrace,
    this.originalError,
  });

  MyError.fromErrorAndStackTrace(
    this.originalError,
    this.stackTrace,
  ) : message = '';

  @override
  String toString() => 'Error: $message: $originalError, \n$stackTrace';
}
