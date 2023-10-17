import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:fpdart/fpdart.dart';

abstract class MainNavigationService {
  void goBack({final Uri? fallbackUri});

  void replaceWithNamed({required final Uri uri});
  void navigateToNamed({required final Uri uri});
  void showSnackBar({required final String message});
  void push({required final Uri uri});
  void replaceWith({required final Uri uri});
  void reset({required final Uri uri});
  Future<void> showDialog({
    final Option<List<NavigationServiceDialogAction>> actions =
        const None<List<NavigationServiceDialogAction>>(),
    required final String content,
    required final String title,
  });
}
