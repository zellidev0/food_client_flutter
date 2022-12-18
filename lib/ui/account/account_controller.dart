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
  void goToCart() {
    _navigationService.navigateToNamed(uri: NavigationServiceUris.cartRouteUri);
  }

  @override
  void goToHome() {
    _navigationService.navigateToNamed(uri: NavigationServiceUris.homeRouteUri);
  }

  @override
  void goBack() {
    _navigationService.goBack();
  }
}
