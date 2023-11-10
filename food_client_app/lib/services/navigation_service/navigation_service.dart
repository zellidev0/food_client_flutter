import 'dart:async';

import 'package:flutter/material.dart' as material;
import 'package:flutter/material.dart';
import 'package:food_client/services/navigation_service/go_router.dart';
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
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'navigation_service.freezed.dart';
part 'navigation_service.g.dart';

abstract class NavigationServiceAggregator
    implements
        HomeNavigationService,
        SingleRecipeNavigationService,
        MainNavigationService,
        CartNavigationService,
        AccountNavigationService,
        IngredientsSortingNavigationService,
        HistoryNavigationService {}

class NavigationServiceUris {
  NavigationServiceUris._();

  static Uri singleRecipe({required final String recipeId}) =>
      Uri.parse('/recipe/$recipeId');
  static String singleRecipeIdKey = 'recipeId';
  static Uri homeRouteUri = Uri.parse('/home');
  static Uri accountRouteUri = Uri.parse('/account');
  static Uri cartRouteUri = Uri.parse('/cart');
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

@riverpod
NavigationServiceAggregator navigationService(final NavigationServiceRef ref) =>
    GoRouterNavigationService(goRouter: ref.watch(goRouterProvider));

class GoRouterNavigationService implements NavigationServiceAggregator {
  final GoRouter _goRouter;

  GoRouterNavigationService({
    required final GoRouter goRouter,
  }) : _goRouter = goRouter;

  @override
  void closeDialog<T>({final T? data}) => _goRouter.pop(data);

  @override
  void goBack({final Uri? fallbackUri}) {
    if (_goRouter.canPop()) {
      _goRouter.pop();
    } else {
      if (fallbackUri != null) {
        reset(uri: fallbackUri);
      }
    }
  }

  @override
  void navigateToNamed({required final Uri uri}) => push(uri: uri);

  @override
  void pop<T>({final T? data}) => _goRouter.pop(data);

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
  void reset({required final Uri uri}) => _goRouter.go(uri.toString());

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
}
