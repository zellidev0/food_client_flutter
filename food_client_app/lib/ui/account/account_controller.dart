import 'package:food_client/services/navigation_service/navigation_service.dart'
    hide navigationService;
import 'package:food_client/ui/account/account_model.dart';
import 'package:food_client/ui/account/account_navigation_service.dart';
import 'package:food_client/ui/account/account_view.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'account_controller.g.dart';

@riverpod
class AccountControllerImplementation extends _$AccountControllerImplementation
    implements AccountController {
  @override
  AccountModel build({
    required final AccountNavigationService navigationService,
  }) =>
      const AccountModel();

  @override
  void goToIngredientsSorting() {
    navigationService.navigateToNamed(
      uri: NavigationServiceUris.ingredientsSortingRouteUri,
    );
  }
}
