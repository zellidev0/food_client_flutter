import 'package:food_client/ui/main/main_model.dart';
import 'package:food_client/ui/main/main_navigation_service.dart';
import 'package:food_client/ui/main/main_view.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class MainControllerImplementation extends Cubit<MainModel>
    implements MainController {
  static const int initialIndex = 0;
  @override
  MainModel build({
    required final MainNavigationService navigationService,
  }) =>
      const MainModel(
        currentBottomNavigationBarIndex: initialIndex,
      );

  @override
  void updateSelectedBottomTabIndex({required final int index}) {
    // initialLocation: index == currentIndex,
    state = state.copyWith(currentBottomNavigationBarIndex: index);
    navigationService.navigateToBottomTab(
      index: index,
      initialLocation: index == initialIndex,
    );
  }

  @override
  void setNavigationShell(StatefulNavigationShell navigationShell) {
    navigationService.setNavigationShell(navigationShell);
  }
}
