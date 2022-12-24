import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

abstract class IngredientsSortingLoggingService {
  void logDebug({required final String message});
  void logError({
    required final String message,
    required final Exception exception,
  });
}
