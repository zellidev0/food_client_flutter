import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/pages/features/account/services/account_navigation_service.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:fpdart/fpdart.dart';

class AccountCubit extends Cubit<Unit> {
  late final AccountNavigationService _navigationService;
  AccountCubit({required AccountNavigationService navigationService})
      : _navigationService = navigationService,
        super(unit);
  void goToIngredientsSorting() {
    _navigationService.navigateToNamed(
      uri: NavigationServiceUris.ingredientsSortingRouteUri,
    );
  }
}
