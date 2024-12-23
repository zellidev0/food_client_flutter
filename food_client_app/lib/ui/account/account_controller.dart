import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/ui/account/account_model.dart';
import 'package:food_client/ui/account/account_navigation_service.dart';
import 'package:food_client/ui/account/account_view.dart';

class AccountControllerImplementation extends Cubit<AccountModel>
    implements AccountController {
  final AccountNavigationService navigationService;
  AccountControllerImplementation({
    required this.navigationService,
  }) : super(const AccountModel());

  @override
  void goToIngredientsSorting() {
    navigationService.navigateToNamed(
      uri: NavigationServiceUris.ingredientsSortingRouteUri,
    );
  }
}
