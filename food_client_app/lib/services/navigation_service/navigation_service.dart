import 'dart:async';

import 'package:flutter/material.dart' as material;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/ui/account/account_navigation_service.dart';
import 'package:food_client/ui/cart/services/cart_navigation_service.dart';
import 'package:food_client/ui/history/services/history_navigation_service.dart';
import 'package:food_client/ui/home/services/home_navigation_service.dart';
import 'package:food_client/ui/ingredients_sorting/services/ingredients_sorting_navigation_service.dart';
import 'package:food_client/ui/main/main_navigation_service.dart';
import 'package:food_client/ui/single_recipe/services/single_recipe_navigation_service.dart';

import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

part 'navigation_service.freezed.dart';

mixin GeneralNavigationService {
  void goBack({final String? fallbackLocation});
  void replaceWithNamed({required final Uri uri});
  void navigateToNamed({required final Uri uri});
  void goTo(final String location);
  void showSnackBar({required final String message});
  Future<void> showModalBottomSheet({required final Widget child});
  Future<void> showDialog({
    final Option<List<NavigationServiceDialogAction>> actions =
        const None<List<NavigationServiceDialogAction>>(),
    required final String content,
    required final String title,
  });
  void closeDialog<T>({final T? data});
  void push({required final Uri uri});
  void replaceWith({required final Uri uri});
  void reset({required final String routeLocation});
}

abstract class NavigationServiceAggregator
    implements
        GeneralNavigationService,
        HomeNavigationService,
        SingleRecipeNavigationService,
        MainNavigationService,
        CartNavigationService,
        AccountNavigationService,
        IngredientsSortingNavigationService,
        HistoryNavigationService {}

abstract class NavigationService extends Cubit<Unit>
    implements NavigationServiceAggregator {
  NavigationService(super.initialState);
}

class NavigationServiceUris {
  static const String shellRoute = '/';

  NavigationServiceUris._();

  static const String singleRecipeRoute = '/recipe/:recipeId';
  static const String singleRecipeIdKey = 'recipeId';
  static const String homeRoute = '/home';
  static const String accountRoute = '/account';
  static const String cartRoute = '/cart';
  static Uri ingredientsSortingRouteUri = Uri.parse('/ingredients-sorting');
  static Uri historyRouteUri = Uri.parse('/history');
}

@freezed
class NavigationServiceDialogAction with _$NavigationServiceDialogAction {
  const factory NavigationServiceDialogAction({
    required final String text,
    required final void Function() onPressed,
  }) = _NavigationServiceDialogAction;
}

class GoRouterNavigationService extends NavigationService {
  final GoRouter _goRouter;

  StatefulNavigationShell? navigationShell;

  GoRouterNavigationService._(
    super.initialState, {
    required final GoRouter goRouter,
  }) : _goRouter = goRouter;

  factory GoRouterNavigationService.instance({
    required final GoRouter goRouter,
  }) =>
      GoRouterNavigationService._(
        unit,
        goRouter: goRouter,
      );

  @override
  void closeDialog<T>({final T? data}) => _goRouter.pop(data);

  @override
  void goBack({final String? fallbackLocation}) {
    if (_goRouter.canPop()) {
      _goRouter.pop();
    } else {
      if (fallbackLocation != null) {
        reset(routeLocation: fallbackLocation);
      }
    }
  }

  @override
  void navigateToNamed({required final Uri uri}) => push(uri: uri);

  @override
  void push({required final Uri uri}) =>
      unawaited(_goRouter.push(uri.toString()));

  @override
  void replaceWith({required final Uri uri}) => unawaited(
        _goRouter.pushReplacement(uri.toString()),
      );

  @override
  void replaceWithNamed({required final Uri uri}) => unawaited(
        _goRouter.replace(uri.toString()),
      );

  @override
  void reset({required final String routeLocation}) =>
      _goRouter.go(routeLocation);

  @override
  Future<void> showDialog({
    final Option<List<NavigationServiceDialogAction>> actions =
        const None<List<NavigationServiceDialogAction>>(),
    required final String title,
    required final String content,
  }) async {
    await material.showDialog(
      context: _goRouter
          .routerDelegate.navigatorKey.currentContext!, //TODOO: fix this
      builder: (final material.BuildContext context) => material.AlertDialog(
        title: material.Text(title),
        content: material.Text(content),
        actions: actions.fold(
          () => null,
          (final List<NavigationServiceDialogAction> actions) => actions
              .map(
                (final NavigationServiceDialogAction action) =>
                    material.TextButton(
                  onPressed: () async {
                    action.onPressed.call();
                    Navigator.of(context, rootNavigator: true).pop();
                  },
                  child: material.Text(action.text),
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  @override
  void showSnackBar({required final String message}) =>
      optionOf(_goRouter.routerDelegate.navigatorKey.currentContext).fold(
        () {},
        (final BuildContext context) =>
            ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(message)),
        ),
      );

  @override
  Future<void> showModalBottomSheet({
    required final Widget child,
  }) async {
    await material.showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(28),
          topRight: Radius.circular(28),
        ),
      ),
      context: _goRouter
          .routerDelegate.navigatorKey.currentContext!, //TODOO: fix this
      builder: (final _) => child,
    );
  }

  @override
  void goTo(String location) {
    _goRouter.routerDelegate.navigatorKey.currentContext!.go(location);
  }

  @override
  void navigateToBottomTab({
    required int index,
    required final bool initialLocation,
  }) {
    navigationShell?.goBranch(
      index,
      initialLocation: initialLocation,
    );
  }

  @override
  void setNavigationShell(StatefulNavigationShell navigationShell) {
    this.navigationShell = navigationShell;
  }
}
