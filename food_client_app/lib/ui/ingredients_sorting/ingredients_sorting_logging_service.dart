abstract class IngredientsSortingLoggingService {
  void logDebug({required final String message});
  void logError({
    required final String message,
    required final Exception exception,
  });
}
