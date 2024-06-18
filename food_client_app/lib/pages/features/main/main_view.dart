import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/cubits/features/main/main_cubit.dart';
import 'package:food_client/cubits/features/main/main_state.dart';

class MainView extends StatelessWidget {
  final Widget _child;

  const MainView({super.key, required final Widget child}) : _child = child;

  @override
  Widget build(BuildContext context) => Material(
        child: SafeArea(
          top: false,
          bottom: false,
          child: SelectionArea(
            child: Scaffold(
              bottomNavigationBar: ClipRRect(
                child: BlocBuilder<MainCubit, MainState>(
                  builder: (BuildContext context, MainState state) =>
                      NavigationBar(
                    onDestinationSelected: (final int selectedIndex) {
                      context.read<MainCubit>().updateSelectedBottomTabIndex(
                            index: selectedIndex,
                          );
                    },
                    selectedIndex: state.bottomNavigationBarIndex,
                    destinations: state.bottomTabs
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
              ),
              body: _child,
            ),
          ),
        ),
      );
}
