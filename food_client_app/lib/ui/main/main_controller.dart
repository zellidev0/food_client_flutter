import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/ui/main/main_navigation_service.dart';
import 'package:food_client/ui/main/main_view.dart';
import 'package:fpdart/fpdart.dart';

class MainControllerImplementation extends MainController {
  final MainNavigationService _navigationService;

  MainControllerImplementation(
    super.state, {
    required final NavigationServiceAggregator navigationService,
  }) : _navigationService = navigationService {
    _navigationService.addListener(listener: _navigationListener);
  }

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
    _navigationService.navigateToNamed(
      uri: NavigationServiceUris.accountRouteUri,
    );
    state = state.copyWith(bottomNavigationBarIndex: 2);
  }

  @override
  void goBack() {
    _navigationService.goBack();
  }

  void _navigationListener() => state = state.copyWith(
        bottomNavigationBarIndex: getBottomNavigationIndexForRouteUri(
          routeUri: _navigationService.currentRoute.map(Uri.parse),
        ),
      );

  static int getBottomNavigationIndexForRouteUri({
    required final Option<Uri> routeUri,
  }) =>
      routeUri.fold(() => 0, (final Uri uri) {
        int index;
        if (uri == NavigationServiceUris.homeRouteUri) {
          index = 0;
        } else if (uri == NavigationServiceUris.cartRouteUri) {
          index = 1;
        } else if (uri == NavigationServiceUris.accountRouteUri) {
          index = 2;
        } else if (uri == NavigationServiceUris.ingredientsSortingRouteUri) {
          index = 2;
        } else {
          index = 1;
        }
        return index;
      });
}
