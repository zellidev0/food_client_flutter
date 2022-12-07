import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/providers/providers.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/ui/main/main_controller.dart';
import 'package:food_client/ui/main/main_model.dart';

class MainView extends ConsumerWidget {
  const MainView({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final MainModel model = ref.watch(providers.mainControllerProvider);
    final MainController controller =
        ref.read(providers.mainControllerProvider.notifier);
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          backgroundColor: Theme.of(context).colorScheme.background,
          selectedItemColor: Theme.of(context).colorScheme.onBackground,
          unselectedItemColor:
              Theme.of(context).colorScheme.onBackground.withOpacity(0.24),
          currentIndex: model.bottomNavigationBarIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.view_list),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'TODO',
            ),
          ],
          onTap: (final int selectedIndex) {
            if (selectedIndex == 0) {
              controller.goToHome();
            } else if (selectedIndex == 1) {
              controller.goToCart();
            }
          },
        ),
      ),
      body: Beamer(
        routerDelegate: ref.read(
          providers.bottomNavigationBarBeamerDelegate,
        ),
      ),
    );
  }
}

abstract class MainController extends StateNotifier<MainModel>{
  MainController(super.state);

  void goToHome();
  void goToCart();
  void goBack();
}
