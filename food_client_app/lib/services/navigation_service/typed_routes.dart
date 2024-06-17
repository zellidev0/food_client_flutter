import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/services/app_settings_service/app_settings_service.dart';
import 'package:food_client/services/logging_service/logging_service.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/services/persistence_service/persistence_service.dart';
import 'package:food_client/services/web_client/web_client_service.dart';
import 'package:food_client/services/web_image_sizer/web_image_sizer_service.dart';
import 'package:food_client/ui/account/account_controller.dart';
import 'package:food_client/ui/account/account_view.dart';
import 'package:food_client/ui/cart/cart_controller_implementation.dart';
import 'package:food_client/ui/cart/cart_view.dart';
import 'package:food_client/ui/history/history_controller.dart';
import 'package:food_client/ui/history/history_view.dart';
import 'package:food_client/ui/home/home_view.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_controller.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_view.dart';
import 'package:food_client/ui/main/main_view.dart';
import 'package:food_client/ui/single_recipe/single_recipe_controller.dart';
import 'package:food_client/ui/single_recipe/single_recipe_view.dart';
import 'package:go_router/go_router.dart';

part 'typed_routes.g.dart';

final GlobalKey<NavigatorState> shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

final GlobalKey<NavigatorState> rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

const String restorationScope = 'restorationScopeId';

@TypedStatefulShellRoute<ShellRouteData>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    TypedStatefulShellBranch<HomePageBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<HomePageRoute>(path: NavigationServiceUris.homeRoute),
      ],
    ),
    TypedStatefulShellBranch<CartPageBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<CartPageRoute>(path: NavigationServiceUris.cartRoute),
      ],
    ),
    TypedStatefulShellBranch<AccountPageBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<AccountPageRoute>(
          path: NavigationServiceUris.accountRoute,
        ),
      ],
    ),
  ],
)
@immutable
class ShellRouteData extends StatefulShellRouteData {
  const ShellRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey = shellNavigatorKey;

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    Widget navigationShell,
  ) =>
      navigationShell;

  static const String $restorationScopeId = restorationScope;

  static Widget $navigatorContainerBuilder(
    BuildContext context,
    StatefulNavigationShell navigationShell,
    List<Widget> children,
  ) =>
      MainView(
        bottomNavigationDestinations: navigationShell.route.branches
            .map((StatefulShellBranch branch) => branch.defaultRoute?.path)
            .whereNotNull()
            .toList(),
        navigationShell: navigationShell,
        children: children,
      );
}

class HomePageBranchData extends StatefulShellBranchData {
  static const String $restorationScopeId = restorationScope;
}

class CartPageBranchData extends StatefulShellBranchData {
  static const String $restorationScopeId = restorationScope;
}

class AccountPageBranchData extends StatefulShellBranchData {
  static const String $restorationScopeId = restorationScope;
}

@immutable
class HomePageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeView();
}

@immutable
class CartPageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => Consumer(
        builder: (_, WidgetRef ref, ___) {
          final CartControllerImplementationProvider provider =
              cartControllerImplementationProvider(
            navigationService: ref.watch(navigationServiceProvider),
            combinedIngredients:
                ref.watch(appSettingsServiceProvider).combineIngredients,
            imageSizerService: ref.read(webImageSizerServiceProvider),
            persistenceService: ref.watch(persistenceServiceProvider.notifier),
            logger: ref.watch(
              loggingServiceProvider(
                loggerName: 'CartController',
              ),
            ),
          );
          ref.listen(persistenceServiceProvider, (_, __) {
            ref.invalidate(cartControllerImplementationProvider);
          });
          return CartView(
            model: ref.watch(provider),
            controller: ref.watch(provider.notifier),
          );
        },
      );
}

@immutable
class IngredientsSortingPageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => Consumer(
        builder: (_, WidgetRef ref, ___) {
          final IngredientsSortingControllerImplementationProvider provider =
              IngredientsSortingControllerImplementationProvider(
            webClientService: ref.read(webClientServiceProvider),
            webImageSizerService: ref.read(webImageSizerServiceProvider),
            logger: ref.read(
              loggingServiceProvider(
                loggerName: 'IngredientsSortingController',
              ),
            ),
            navigationService: ref.read(navigationServiceProvider),
            persistenceService: ref.watch(persistenceServiceProvider.notifier),
          );
          return IngredientsSortingView(
            model: ref.watch(provider),
            controller: ref.watch(provider.notifier),
          );
        },
      );
}

@immutable
class HistoryPageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => Consumer(
        builder: (_, WidgetRef ref, ___) {
          final HistoryControllerImplementationProvider provider =
              historyControllerImplementationProvider(
            logger: ref.watch(
              loggingServiceProvider(loggerName: 'SingleRecipe'),
            ),
            navigationService: ref.watch(navigationServiceProvider),
            persistenceService: ref.watch(persistenceServiceProvider.notifier),
          );
          return HistoryView(
            model: ref.watch(provider),
            controller: ref.watch(provider.notifier),
          );
        },
      );
}

@immutable
class AccountPageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => Consumer(
        builder: (_, WidgetRef ref, ___) {
          final AccountControllerImplementationProvider provider =
              accountControllerImplementationProvider(
            navigationService: ref.watch(navigationServiceProvider),
          );
          return AccountView(
            model: ref.watch(provider),
            controller: ref.watch(provider.notifier),
          );
        },
      );
}

@TypedGoRoute<SingleRecipePageRoute>(
  path: NavigationServiceUris.singleRecipeRoute,
)
@immutable
class SingleRecipePageRoute extends GoRouteData {
  final String recipeId;

  const SingleRecipePageRoute({
    required this.recipeId,
  });

  @override
  Widget build(BuildContext context, GoRouterState state) => Consumer(
        builder: (_, WidgetRef ref, ___) {
          final SingleRecipeControllerImplementationProvider provider =
              singleRecipeControllerImplementationProvider(
            recipeId: recipeId,
            navigationService: ref.read(navigationServiceProvider),
            webClientService: ref.read(webClientServiceProvider),
            webImageSizerService: ref.read(webImageSizerServiceProvider),
            persistenceService: ref.watch(
              persistenceServiceProvider.notifier,
            ),
            logger: ref.watch(
              loggingServiceProvider(loggerName: 'SingleRecipe'),
            ),
          );
          return SingleRecipeView(
            model: ref.watch(provider),
            controller: ref.watch(provider.notifier),
          );
        },
      );
}
