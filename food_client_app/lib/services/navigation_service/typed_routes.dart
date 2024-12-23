import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/services/app_settings_service/app_settings_service.dart';
import 'package:food_client/services/logging_service/logging_service.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/services/persistence_service/persistence_service.dart';
import 'package:food_client/services/web_client/web_client_service.dart';
import 'package:food_client/services/web_image_sizer/web_image_sizer_service.dart';
import 'package:food_client/ui/account/account_controller.dart';
import 'package:food_client/ui/account/account_model.dart';
import 'package:food_client/ui/account/account_view.dart';
import 'package:food_client/ui/cart/cart_controller_implementation.dart';
import 'package:food_client/ui/cart/cart_model.dart';
import 'package:food_client/ui/cart/cart_view.dart';
import 'package:food_client/ui/history/history_controller.dart';
import 'package:food_client/ui/history/history_model.dart';
import 'package:food_client/ui/history/history_view.dart';
import 'package:food_client/ui/home/home_controller_implementation.dart';
import 'package:food_client/ui/home/home_model.dart';
import 'package:food_client/ui/home/home_view.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_controller.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_model.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_view.dart';
import 'package:food_client/ui/main/main_controller.dart';
import 'package:food_client/ui/main/main_model.dart';
import 'package:food_client/ui/main/main_view.dart';
import 'package:food_client/ui/single_recipe/single_recipe_controller.dart';
import 'package:food_client/ui/single_recipe/single_recipe_model.dart';
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
      BlocProvider<MainControllerImplementation>(
        create: (BuildContext context) => MainControllerImplementation(
          const MainModel(
            currentBottomNavigationBarIndex: 0,
          ),
          navigationService: context.read<NavigationService>(),
        ),
        child: BlocBuilder<MainControllerImplementation, MainModel>(
          builder: (BuildContext context, MainModel state) => MainView(
            bottomNavigationDestinations: navigationShell.route.branches
                .map((StatefulShellBranch branch) => branch.defaultRoute?.path)
                .whereNotNull()
                .toList(),
            navigationShell: navigationShell,
            children: children,
          ),
        ),
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
  Widget build(BuildContext context, GoRouterState state) =>
      BlocProvider<HomeControllerImplementation>(
        create: (BuildContext context) => HomeControllerImplementation(
          recipeLocales: context.read<AppSettingsService>().state.recipeLocales,
          globalNavigationService: context.read<NavigationService>(),
          webClientService: context.read<WebClientService>(),
          webImageSizerService: context.read<WebImageSizerService>(),
          persistenceService: context.read<PersistenceService>(),
          logger: LoggingServiceImplementation(
            loggerName: 'HomeController',
          ),
        ),
        child: BlocBuilder<HomeControllerImplementation, HomeModel>(
          builder: (BuildContext context1, HomeModel model) => HomeView(
            model: model,
            controller: BlocProvider.of<HomeControllerImplementation>(
              context1,
            ),
          ),
        ),
      );
}

@immutable
class CartPageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      BlocProvider<CartControllerImplementation>(
        create: (BuildContext context) => CartControllerImplementation(
          combinedIngredients:
              context.read<AppSettingsService>().state.combineIngredients,
          imageSizerService: context.read<WebImageSizerService>(),
          navigationService: context.read<NavigationService>(),
          persistenceService: context.read<PersistenceService>(),
          logger: LoggingServiceImplementation(
            loggerName: 'CartController',
          ),
        ),
        child: BlocBuilder<CartControllerImplementation, CartModel>(
          builder: (BuildContext context, CartModel model) => CartView(
            model: model,
            controller: BlocProvider.of<CartControllerImplementation>(
              context,
            ),
          ),
        ),
      );
}

@immutable
class IngredientsSortingPageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      BlocProvider<IngredientsSortingControllerImplementation>(
        create: (BuildContext context) =>
            IngredientsSortingControllerImplementation(
          webClientService: context.read<WebClientService>(),
          webImageSizerService: context.read<WebImageSizerService>(),
          logger: LoggingServiceImplementation(
            loggerName: 'IngredientsSortingController',
          ),
          navigationService: context.read<NavigationService>(),
          persistenceService: context.read<PersistenceService>(),
        ),
        child: BlocBuilder<IngredientsSortingControllerImplementation,
            IngredientsSortingModel>(
          builder: (BuildContext context, IngredientsSortingModel model) =>
              IngredientsSortingView(
            model: model,
            controller:
                BlocProvider.of<IngredientsSortingControllerImplementation>(
              context,
            ),
          ),
        ),
      );
}

@immutable
class HistoryPageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      BlocProvider<HistoryControllerImplementation>(
        create: (BuildContext context) => HistoryControllerImplementation(
          logger: LoggingServiceImplementation(
            loggerName: 'HistoryController',
          ),
          navigationService: context.read<NavigationService>(),
          persistenceService: context.read<PersistenceService>(),
        ),
        child: BlocBuilder<HistoryControllerImplementation, HistoryModel>(
          builder: (BuildContext context, HistoryModel model) => HistoryView(
            model: model,
            controller:
                BlocProvider.of<HistoryControllerImplementation>(context),
          ),
        ),
      );
}

@immutable
class AccountPageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      BlocProvider<AccountControllerImplementation>(
        create: (BuildContext context) => AccountControllerImplementation(
          navigationService: context.read<NavigationService>(),
        ),
        child: BlocBuilder<AccountControllerImplementation, AccountModel>(
          builder: (BuildContext context, AccountModel model) => AccountView(
            model: model,
            controller: BlocProvider.of<AccountControllerImplementation>(
              context,
            ),
          ),
        ),
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
  Widget build(BuildContext context, GoRouterState state) =>
      BlocProvider<SingleRecipeControllerImplementation>(
        create: (BuildContext context) => SingleRecipeControllerImplementation(
          recipeId:
              state.pathParameters[NavigationServiceUris.singleRecipeIdKey] ??
                  '',
          navigationService: context.read<NavigationService>(),
          webClientService: context.read<WebClientService>(),
          webImageSizerService: context.read<WebImageSizerService>(),
          persistenceService: context.read<PersistenceService>(),
          logger: LoggingServiceImplementation(
            loggerName: 'SingleRecipe',
          ),
        ),
        child: BlocBuilder<SingleRecipeControllerImplementation,
            SingleRecipeModel>(
          builder: (BuildContext context, SingleRecipeModel model) =>
              SingleRecipeView(
            model: model,
            controller: BlocProvider.of<SingleRecipeControllerImplementation>(
              context,
            ),
          ),
        ),
      );
}
