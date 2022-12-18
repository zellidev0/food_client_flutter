import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:fpdart/fpdart.dart';

abstract class IngredientsSortingNavigationService {
  void goBack({final Uri? fallbackUri});
  void goBackToNamed({required final Uri uri});
  void replaceWithNamed({required final Uri uri});
  void navigateToNamed({required final Uri uri});
  void showSnackBar({required final String message});
  Future<void> showDialog({
    final Option<List<NavigationServiceDialogAction>> actions =
        const None<List<NavigationServiceDialogAction>>(),
    required final String content,
    required final String title,
  });
}
