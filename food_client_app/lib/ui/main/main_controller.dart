import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/ui/main/main_model.dart';
import 'package:food_client/ui/main/main_navigation_service.dart';
import 'package:food_client/ui/main/main_view.dart';
import 'package:go_router/go_router.dart';

class MainControllerImplementation extends Cubit<MainModel>
    implements MainController {
  static const int initialIndex = 0;
  final MainNavigationService navigationService;

  MainControllerImplementation(
    super.initialState, {
    required this.navigationService,
  });

  @override
  void updateSelectedBottomTabIndex({required final int index}) {
    emit(state.copyWith(currentBottomNavigationBarIndex: index));
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
