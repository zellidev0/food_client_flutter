import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/ui/account/account_navigation_service.dart';
import 'package:food_client/ui/account/account_view.dart';

class AccountControllerImplementation extends AccountController {
  final AccountNavigationService _navigationService;

  AccountControllerImplementation(
    super.state, {
    required final AccountNavigationService navigationService,
  }) : _navigationService = navigationService;

  @override
  void goToIngredientsSorting() {
    _navigationService.navigateToNamed(
      uri: NavigationServiceUris.ingredientsSortingRouteUri,
    );
  }
}
