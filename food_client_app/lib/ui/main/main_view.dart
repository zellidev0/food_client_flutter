import 'package:flutter/material.dart';
import 'package:food_client/mvc.dart';
import 'package:food_client/ui/main/main_model.dart';

class MainView extends StatelessWidget {
  final Widget _child;
  final MainController controller;
  final MainModel model;

  const MainView({
    required final Widget child,
    required this.controller,
    required this.model,
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
