import 'package:food_client/providers/providers.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/ui/main/main_model.dart';
import 'package:food_client/ui/main/main_navigation_service.dart';
import 'package:food_client/ui/main/main_view.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main_controller.g.dart';

@riverpod
class MainControllerImplementation extends _$MainControllerImplementation
    implements MainController {
  late final MainNavigationService _navigationService;

  @override
  MainModel build() {
    _navigationService =
        ref.watch(providers.bottomNavigationBarNavigationServiceProvider);
    return const MainModel(bottomNavigationBarIndex: 0);
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
  void goBack() {
    _navigationService.goBack();
  }
}
