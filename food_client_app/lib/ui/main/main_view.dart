import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/generated/locale_keys.g.dart';
import 'package:food_client/mvc.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/ui/main/main_providers.dart';
import 'package:go_router/go_router.dart';

class MainView extends ConsumerStatefulWidget {
  final List<Widget> children;
  final List<String> bottomNavigationDestinations;
  final StatefulNavigationShell navigationShell;

  const MainView({
    required this.children,
    super.key,
    required this.bottomNavigationDestinations,
    required this.navigationShell,
  });

  @override
  ConsumerState<MainView> createState() => _MainViewState();
}

class _MainViewState extends ConsumerState<MainView> {
  @override
  void initState() {
    super.initState();
    ref.read(mainControllerProvider).setNavigationShell(widget.navigationShell);
  }

  @override
  Widget build(final BuildContext context) {
    final int currentIndex =
        ref.watch(mainModelProvider).currentBottomNavigationBarIndex;
    return Material(
      child: SafeArea(
        top: false,
        bottom: false,
        child: SelectionArea(
          child: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              items: widget.bottomNavigationDestinations
                  .map(
                    (String path) => BottomNavigationBarItem(
                      icon: determineIcon(path),
                      activeIcon: determineIcon(path),
                      label: determineLabel(path),
                    ),
                  )
                  .toList(),
              currentIndex: currentIndex,
              onTap: (int index) =>
                  ref.read(mainControllerProvider).updateSelectedBottomTabIndex(
                        index: index,
                      ),
            ),
            body: Stack(
              children: widget.children
                  .mapIndexed(
                    (int index, Widget navigator) => AnimatedOpacity(
                      opacity: index == currentIndex ? 1 : 0,
                      duration: const Duration(milliseconds: 200),
                      child: IgnorePointer(
                        ignoring: index != currentIndex,
                        child: TickerMode(
                          enabled: index == currentIndex,
                          child: navigator,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }

  Icon determineIcon(String path) => switch (path) {
        NavigationServiceUris.homeRoute => const Icon(Icons.explore),
        NavigationServiceUris.cartRoute => const Icon(Icons.shopping_cart),
        NavigationServiceUris.accountRoute => const Icon(Icons.account_circle),
        _ => const Icon(Icons.home),
      };

  String determineLabel(String path) => switch (path) {
        NavigationServiceUris.homeRoute =>
          LocaleKeys.ui_main_view_bottom_navigation_destination_explore.tr(),
        NavigationServiceUris.cartRoute => LocaleKeys
            .ui_main_view_bottom_navigation_destination_shopping_cart
            .tr(),
        NavigationServiceUris.accountRoute =>
          LocaleKeys.ui_main_view_bottom_navigation_destination_account.tr(),
        _ => LocaleKeys.ui_main_view_bottom_navigation_destination_explore.tr(),
      };
}

abstract class MainController implements MvcController {
  void updateSelectedBottomTabIndex({required final int index});
  void setNavigationShell(StatefulNavigationShell navigationShell);
}
