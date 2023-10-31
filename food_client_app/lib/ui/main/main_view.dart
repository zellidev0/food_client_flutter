import 'package:flutter/material.dart';
import 'package:food_client/mvc.dart';
import 'package:food_client/ui/main/main_model.dart';

class MainView extends MvcView<MainController, MainModel> {
  final Widget _child;

  const MainView({
    required final Widget child,
    required super.controller,
    required super.model,
    super.key,
  }) : _child = child;

  @override
  Widget build(final BuildContext context) => Material(
        child: SafeArea(
          top: false,
          bottom: false,
          child: SelectionArea(
            child: Scaffold(
              bottomNavigationBar: ClipRRect(
                child: NavigationBar(
                  onDestinationSelected: (final int selectedIndex) {
                    controller.updateSelectedBottomTabIndex(
                      index: selectedIndex,
                    );
                  },
                  selectedIndex: model.bottomNavigationBarIndex,
                  destinations: model.bottomTabs
                      .map(
                        (final MainBottomTab tab) => NavigationDestination(
                          icon: tab.unselectedIcon,
                          selectedIcon: tab.selectedIcon,
                          label: tab.label,
                        ),
                      )
                      .toList(),
                ),
              ),
              body: _child,
            ),
          ),
        ),
      );
}

abstract class MainController implements MvcController {
  void updateSelectedBottomTabIndex({required final int index});
  bool goBack();
}
