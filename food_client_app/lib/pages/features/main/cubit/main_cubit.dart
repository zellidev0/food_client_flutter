import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/pages/features/main/cubit/main_state.dart';
import 'package:food_client/pages/features/main/services/main_navigation_service.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:fpdart/fpdart.dart';

class MainCubit extends Cubit<MainState> {
  final MainNavigationService _navigationService;
  MainCubit({required final MainNavigationService navigationService})
      : _navigationService = navigationService,
        super(
          MainState(
            bottomTabs: <MainBottomTab>[
              MainBottomTab(
                label:
                    'ui.main_view.bottom_navigation_destination.explore'.tr(),
                route: NavigationServiceUris.homeRouteUri,
                selectedIcon: const Icon(Icons.explore),
                unselectedIcon: const Icon(Icons.explore),
              ),
              MainBottomTab(
                label:
                    'ui.main_view.bottom_navigation_destination.shopping_cart'
                        .tr(),
                route: NavigationServiceUris.cartRouteUri,
                selectedIcon: const Icon(Icons.shopping_cart),
                unselectedIcon: const Icon(Icons.shopping_cart),
              ),
              MainBottomTab(
                label:
                    'ui.main_view.bottom_navigation_destination.account'.tr(),
                route: NavigationServiceUris.accountRouteUri,
                selectedIcon: const Icon(Icons.account_circle),
                unselectedIcon: const Icon(Icons.account_circle),
              ),
            ],
            bottomNavigationBarIndex: 0,
          ),
        );

  void updateSelectedBottomTabIndex({required final int index}) {
    emit(state.copyWith(bottomNavigationBarIndex: index));
    _navigationService.reset(
      uri: optionOf(state.bottomTabs.elementAtOrNull(index))
          .getOrElse(() => state.bottomTabs.elementAt(0))
          .route,
    );
  }
}
