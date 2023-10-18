import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart'
    hide navigationService;
import 'package:food_client/ui/main/main_model.dart';
import 'package:food_client/ui/main/main_navigation_service.dart';
import 'package:food_client/ui/main/main_view.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main_controller.g.dart';

@riverpod
class MainControllerImplementation extends _$MainControllerImplementation
    implements MainController {
  @override
  MainModel build({
    required final MainNavigationService navigationService,
  }) =>
      MainModel(
        bottomTabs: <MainBottomTab>[
          MainBottomTab(
            label: 'ui.main_view.bottom_navigation_destination.explore'.tr(),
            route: NavigationServiceUris.homeRouteUri,
            selectedIcon: const Icon(Icons.explore),
            unselectedIcon: const Icon(Icons.explore),
          ),
          MainBottomTab(
            label:
                'ui.main_view.bottom_navigation_destination.shopping_cart'.tr(),
            route: NavigationServiceUris.cartRouteUri,
            selectedIcon: const Icon(Icons.shopping_cart),
            unselectedIcon: const Icon(Icons.shopping_cart),
          ),
          MainBottomTab(
            label: 'ui.main_view.bottom_navigation_destination.account'.tr(),
            route: NavigationServiceUris.accountRouteUri,
            selectedIcon: const Icon(Icons.account_circle),
            unselectedIcon: const Icon(Icons.account_circle),
          ),
        ],
        bottomNavigationBarIndex: 0,
      );

  // @override
  // void goToCart() {
  //   navigationService.navigateToNamed(uri: NavigationServiceUris.cartRouteUri);
  //   state = state.copyWith(bottomNavigationBarIndex: 1);
  // }

  // @override
  // void goToHome() {
  //   navigationService.navigateToNamed(uri: NavigationServiceUris.homeRouteUri);
  //   state = state.copyWith(bottomNavigationBarIndex: 0);
  // }

  // @override
  // void goToAccount() {
  //   navigationService.navigateToNamed(
  //     uri: NavigationServiceUris.accountRouteUri,
  //   );
  //   state = state.copyWith(bottomNavigationBarIndex: 2);
  // }

  @override
  bool goBack() {
    final int todayIndex = state.bottomTabs.toList().indexWhere(
          (MainBottomTab tab) =>
              tab.route == NavigationServiceUris.homeRouteUri,
        );
    if (todayIndex == -1) {
      return false;
    } else if (todayIndex != state.bottomNavigationBarIndex) {
      state = state.copyWith(bottomNavigationBarIndex: todayIndex);
      navigationService.reset(uri: NavigationServiceUris.homeRouteUri);
      return false;
    } else {
      return true;
    }
  }

  @override
  void updateSelectedBottomTabIndex({required final int index}) {
    state = state.copyWith(bottomNavigationBarIndex: index);
    navigationService.reset(
      uri: optionOf(state.bottomTabs.elementAtOrNull(index))
          .getOrElse(() => state.bottomTabs.elementAt(0))
          .route,
    );
  }
}
