import 'dart:async';

import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter/material.dart';
import 'package:food_client/ui/account/account_navigation_service.dart';
import 'package:food_client/ui/cart/cart_navigation_service.dart';
import 'package:food_client/ui/home/home_navigation_service.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_navigation_service.dart';
import 'package:food_client/ui/main/main_navigation_service.dart';
import 'package:food_client/ui/single_recipe/single_recipe_navigation_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_service.freezed.dart';

abstract class NavigationServiceAggregator
    implements
        HomeNavigationService,
        SingleRecipeNavigationService,
        MainNavigationService,
        CartNavigationService,
        AccountNavigationService,
        IngredientsSortingNavigationService {}

class NavigationServiceUris {
  NavigationServiceUris._();

  static Uri homeSingleRecipeUri = Uri.parse('/main/home/single-recipe');
  static Uri cartSingleRecipeUri = Uri.parse('/main/cart/single-recipe');
  static String singleRecipeIdKey = 'single-recipe-id';
  static Uri homeRouteUri = Uri.parse('/main/home');
  static Uri accountRouteUri = Uri.parse('/main/account');
  static Uri cartRouteUri = Uri.parse('/main/cart');
  static Uri mainRouteUri = Uri.parse('/main');
  static Uri ingredientsSortingRouteUri =
      Uri.parse('/main/account/ingredients-sorting');
}

@freezed
class NavigationServiceDialogAction with _$NavigationServiceDialogAction {
  const factory NavigationServiceDialogAction({
    required final String text,
    required final void Function() onPressed,
  }) = _NavigationServiceDialogAction;
}

class BeamerNavigationService implements NavigationServiceAggregator {
  final BeamerDelegate _beamerDelegate;

  BeamerNavigationService({
    required final BeamerDelegate beamerDelegate,
  }) : _beamerDelegate = beamerDelegate;

  @override
  void goBack({final Uri? fallbackUri}) {
    if (_beamerDelegate.canBeamBack) {
      _beamerDelegate.beamBack();
    } else {
      replaceWithNamed(uri: fallbackUri ?? NavigationServiceUris.homeRouteUri);
    }
  }

  @override
  void goBackToNamed({required final Uri uri}) =>
      _beamerDelegate.popToNamed(uri.toString());

  @override
  void navigateToNamed({required final Uri uri}) =>
      _beamerDelegate.beamToNamed(uri.toString(), beamBackOnPop: false);

  @override
  void replaceWithNamed({required final Uri uri}) =>
      _beamerDelegate.beamToReplacementNamed(uri.toString());

  @override
  Future<void> showDialog({
    final Option<List<NavigationServiceDialogAction>> actions =
        const None<List<NavigationServiceDialogAction>>(),
    required final String title,
    required final String content,
  }) async {
    await material.showDialog(
      context: _beamerDelegate.navigator.context,
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
      context: _beamerDelegate.navigator.context,
      builder: (final _) => child,
    );
  }

  @override
  void showSnackBar({required final String message}) =>
      material.ScaffoldMessenger.of(_beamerDelegate.navigator.context)
          .showSnackBar(
        material.SnackBar(
          behavior: SnackBarBehavior.floating,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          content: material.Text(message),
        ),
      );

  @override
  void pop() {
    unawaited(_beamerDelegate.popRoute());
  }

  @override
  void addListener({required final void Function() listener}) {
    _beamerDelegate.addListener(listener);
  }

  @override
  Option<String> get currentRoute => optionOf(
        // ignore: deprecated_member_use
        _beamerDelegate.currentBeamLocation.state.routeInformation.location,
      );
}
