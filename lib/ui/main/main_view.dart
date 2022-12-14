import 'package:beamer/beamer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/providers/providers.dart';
import 'package:food_client/ui/main/main_model.dart';

class MainView extends ConsumerWidget {
  const MainView({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final MainModel model = ref.watch(providers.mainControllerProvider);
    final MainController controller =
        ref.read(providers.mainControllerProvider.notifier);
    return Material(
      child: SafeArea(
        child: SelectionArea(
          child: Scaffold(
            bottomNavigationBar: ClipRRect(
              child: NavigationBar(
                onDestinationSelected: (final int selectedIndex) {
                  if (selectedIndex == 0) {
                    controller.goToHome();
                  } else if (selectedIndex == 1) {
                    controller.goToCart();
                  }
                },
                selectedIndex: model.bottomNavigationBarIndex,
                destinations: <Widget>[
                  NavigationDestination(
                    icon: const Icon(Icons.explore),
                    label: 'ui.main_view.bottom_navigation_destination.explore'
                        .tr(),
                  ),
                  NavigationDestination(
                    icon: const Icon(Icons.shopping_cart),
                    label:
                        'ui.main_view.bottom_navigation_destination.shopping_cart'
                            .tr(),
                  ),
                  const NavigationDestination(
                    icon: Icon(Icons.add),
                    label: 'TODO',
                  ),
                ],
              ),
            ),
            body: Beamer(
              routerDelegate: ref.read(
                providers.bottomNavigationBarBeamerDelegate,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

abstract class MainController extends StateNotifier<MainModel> {
  MainController(super.state);

  void goToHome();
  void goToCart();
  void goBack();
}
