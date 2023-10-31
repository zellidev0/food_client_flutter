class MyError {
  final String message;
  final Object? originalError;
  final StackTrace? stackTrace;

  MyError({
    required this.message,
    this.stackTrace,
    this.originalError,
  });

  @override
  String toString() => 'Error: $message: $originalError, \n$stackTrace';
}
