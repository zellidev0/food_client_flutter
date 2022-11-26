import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter/material.dart';
import 'package:food_client/ui/home/home_navigation_service.dart';
import 'package:food_client/ui/home/home_view.dart';
import 'package:food_client/ui/main/main_navigation_service.dart';
import 'package:food_client/ui/main/main_view.dart';
import 'package:food_client/ui/single_recipe/single_recipe_navigation_service.dart';
import 'package:food_client/ui/single_recipe/single_recipe_view.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'navigation_service.freezed.dart';
part 'navigation_service.g.dart';

@riverpod
NavigationServiceAggregator globalNavigationService(
  final GlobalNavigationServiceRef ref,
) =>
    BeamerNavigationService(
      beamerDelegate: ref.read(globalBeamerDelegateProvider),
    );

@riverpod
NavigationServiceAggregator bottomNavigationBarNavigationService(
  final BottomNavigationBarNavigationServiceRef ref,
) =>
    BeamerNavigationService(
      beamerDelegate: ref.read(bottomNavigationBarBeamerDelegateProvider),
    );

abstract class NavigationServiceAggregator
    implements
        HomeNavigationService,
        SingleRecipeNavigationService,
        MainNavigationService {}

class NavigationServiceUris {
  NavigationServiceUris._();

  static Uri singleRecipeUri = Uri.parse('/main/recipes');
  static String singleRecipeIdKey = 'single-recipe-id';
  static Uri homeRouteUri = Uri.parse('/main/home');
  static Uri cartRouteUri = Uri.parse('/main/cart');
  static Uri mainRouteUri = Uri.parse('/main');
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
      _beamerDelegate.beamToNamed(uri.toString(), beamBackOnPop: true);

  @override
  void replaceWithNamed({required final Uri uri}) =>
      _beamerDelegate.beamToReplacementNamed(uri.toString());

  @override
  Future<void> showDialog({
    final Option<List<NavigationServiceDialogAction>> actions =
        const None<List<NavigationServiceDialogAction>>(),
    required final String message,
  }) async {
    await material.showDialog(
      context: _beamerDelegate.navigator.context,
      builder: (final material.BuildContext context) => material.AlertDialog(
        title: material.Text(message),
        actions: actions.fold(
          () => null,
          (final List<NavigationServiceDialogAction> actions) => actions
              .map(
                (final NavigationServiceDialogAction action) =>
                    material.TextButton(
                  onPressed: () async {
                    action.onPressed.call();
                    await _beamerDelegate.popRoute();
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
    required final Color backgroundColor,
  }) async {
    await material.showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      backgroundColor: backgroundColor,
      context: _beamerDelegate.navigator.context,
      builder: (final _) => child,
    );
  }

  @override
  void showSnackBar({required final String message}) =>
      material.ScaffoldMessenger.of(_beamerDelegate.navigator.context)
          .showSnackBar(material.SnackBar(content: material.Text(message)));
}

@Riverpod(keepAlive: true)
BeamerDelegate globalBeamerDelegate(final GlobalBeamerDelegateRef ref) =>
    BeamerDelegate(
      initialPath: NavigationServiceUris.mainRouteUri.toString(),
      locationBuilder: RoutesLocationBuilder(
        routes: <Pattern, dynamic Function(BuildContext, BeamState, Object?)>{
          NavigationServiceUris.mainRouteUri.toString():
              (final _, final __, final ___) => const MainView(),
          '*': (final _, final __, final ___) => const MainView(),
        },
      ),
    );

@Riverpod(keepAlive: true)
BeamerDelegate bottomNavigationBarBeamerDelegate(
        final GlobalBeamerDelegateRef ref) =>
    BeamerDelegate(
      initialPath: NavigationServiceUris.homeRouteUri.toString(),
      locationBuilder: RoutesLocationBuilder(
        routes: <Pattern, dynamic Function(BuildContext, BeamState, Object?)>{
          NavigationServiceUris.homeRouteUri.toString():
              (final _, final __, final ___) => const HomeView(),
          '${NavigationServiceUris.singleRecipeUri}': (
            final _,
            final BeamState state,
            final ___,
          ) =>
              SingleRecipeView(
                recipeId: state
                    .queryParameters[NavigationServiceUris.singleRecipeIdKey]!,
              ),
          // '*': (final _, final __, final ___) => const HomeView(),
          // '/': (final _, final __, final ___) => const HomeView(),
        },
      ),
    );
