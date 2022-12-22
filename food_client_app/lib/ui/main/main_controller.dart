import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/ui/main/main_navigation_service.dart';
import 'package:food_client/ui/main/main_view.dart';

class MainControllerImplementation extends MainController {
  final MainNavigationService _navigationService;

  MainControllerImplementation(
    super.state, {
    required final NavigationServiceAggregator navigationService,
  }) : _navigationService = navigationService;

  @override
  void goToCart() {
    _navigationService.navigateToNamed(uri: NavigationServiceUris.cartRouteUri);
    state = state.copyWith(bottomNavigationBarIndex: 1);
  }

  @override
  void goToHome() {
    _navigationService.navigateToNamed(uri: NavigationServiceUris.homeRouteUri);
    state = state.copyWith(bottomNavigationBarIndex: 0);
  }

  @override
  void goToAccount() {
    _navigationService.navigateToNamed(uri: NavigationServiceUris.accountRouteUri);
    state = state.copyWith(bottomNavigationBarIndex: 2);
  }

  @override
  void goBack() {
    _navigationService.goBack();
  }
}
