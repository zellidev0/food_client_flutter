import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:go_router/go_router.dart';

abstract class MainNavigationService with GeneralNavigationService {
  void navigateToBottomTab({
    required int index,
    required final bool initialLocation,
  });
  void setNavigationShell(StatefulNavigationShell navigationShell);
}
