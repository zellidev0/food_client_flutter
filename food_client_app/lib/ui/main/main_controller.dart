import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:food_client/services/navigation_service/typed_routes.dart';
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
            routeLocation: HomePageRoute().location,
            selectedIcon: const Icon(Icons.explore),
            unselectedIcon: const Icon(Icons.explore),
          ),
          MainBottomTab(
            label:
                'ui.main_view.bottom_navigation_destination.shopping_cart'.tr(),
            routeLocation: CartPageRoute().location,
            selectedIcon: const Icon(Icons.shopping_cart),
            unselectedIcon: const Icon(Icons.shopping_cart),
          ),
          MainBottomTab(
            label: 'ui.main_view.bottom_navigation_destination.account'.tr(),
            routeLocation: AccountPageRoute().location,
            selectedIcon: const Icon(Icons.account_circle),
            unselectedIcon: const Icon(Icons.account_circle),
          ),
        ],
        bottomNavigationBarIndex: 0,
      );

  @override
  bool goBack() {
    final int todayIndex = state.bottomTabs.toList().indexWhere(
          (MainBottomTab tab) => tab.routeLocation == HomePageRoute().location,
        );
    if (todayIndex == -1) {
      return false;
    } else if (todayIndex != state.bottomNavigationBarIndex) {
      state = state.copyWith(bottomNavigationBarIndex: todayIndex);
      navigationService.reset(routeLocation: HomePageRoute().location);
      return false;
    } else {
      return true;
    }
  }

  @override
  void updateSelectedBottomTabIndex({required final int index}) {
    state = state.copyWith(bottomNavigationBarIndex: index);
    navigationService.reset(
      routeLocation: optionOf(state.bottomTabs.elementAtOrNull(index))
          .getOrElse(() => state.bottomTabs.elementAt(0))
          .routeLocation,
    );
  }
}
