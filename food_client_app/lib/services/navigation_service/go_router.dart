import 'package:flutter/foundation.dart';
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
import 'package:food_client/ui/home/home_controller.dart';
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

const String dailyPulseDailyPulseIdPathParameter = 'dailyPulseId';

final GlobalKey<NavigatorState> rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

final GlobalKey<NavigatorState> shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

GoRouter goRouter() => GoRouter(
      debugLogDiagnostics: kDebugMode,
      initialLocation: NavigationServiceUris.homeRouteUri.toString(),
      navigatorKey: rootNavigatorKey,
      routes: <RouteBase>[
        StatefulShellRoute.indexedStack(
          builder: (_, __, Widget child) =>
              BlocProvider<MainControllerImplementation>(
            create: (BuildContext context) => MainControllerImplementation(
              navigationService: context.read<NavigationService>(),
            ),
            child: BlocBuilder<MainControllerImplementation, MainModel>(
              builder: (BuildContext context, MainModel model) => MainView(
                controller: BlocProvider.of<MainControllerImplementation>(
                  context,
                ),
                model: model,
                child: child,
              ),
            ),
          ),
          branches: <StatefulShellBranch>[
            StatefulShellBranch(
              routes: <RouteBase>[
                GoRoute(
                  builder: (_, GoRouterState state) =>
                      BlocProvider<AccountControllerImplementation>(
                    create: (BuildContext context) =>
                        AccountControllerImplementation(
                      navigationService: context.read<NavigationService>(),
                    ),
                    child: BlocBuilder<AccountControllerImplementation,
                        AccountModel>(
                      builder: (BuildContext context, AccountModel model) =>
                          AccountView(
                        model: model,
                        controller:
                            BlocProvider.of<AccountControllerImplementation>(
                          context,
                        ),
                      ),
                    ),
                  ),
                  path: NavigationServiceUris.accountRouteUri.toString(),
                ),
              ],
            ),
            StatefulShellBranch(
              routes: <RouteBase>[
                GoRoute(
                  builder: (_, GoRouterState state) =>
                      BlocProvider<CartControllerImplementation>(
                    create: (BuildContext context) =>
                        CartControllerImplementation(
                      combinedIngredients: context
                          .read<AppSettingsService>()
                          .state
                          .combineIngredients,
                      imageSizerService: context.read<WebImageSizerService>(),
                      navigationService: context.read<NavigationService>(),
                      persistenceService: context.read<PersistenceService>(),
                      logger: LoggingServiceImplementation(
                        loggerName: 'CartController',
                      ),
                    ),
                    child: BlocBuilder<CartControllerImplementation, CartModel>(
                      builder: (BuildContext context, CartModel model) =>
                          CartView(
                        model: model,
                        controller:
                            BlocProvider.of<CartControllerImplementation>(
                          context,
                        ),
                      ),
                    ),
                  ),
                  path: NavigationServiceUris.cartRouteUri.toString(),
                ),
              ],
            ),
            StatefulShellBranch(
              routes: <RouteBase>[
                GoRoute(
                  builder: (_, GoRouterState state) =>
                      BlocProvider<HomeControllerImplementation>(
                    create: (BuildContext context) =>
                        HomeControllerImplementation(
                      recipeLocales: context
                          .read<AppSettingsService>()
                          .state
                          .recipeLocales,
                      navigationService: context.read<NavigationService>(),
                      webClientService: context.read<WebClientService>(),
                      webImageSizerService:
                          context.read<WebImageSizerService>(),
                      persistenceService: context.read<PersistenceService>(),
                      logger: LoggingServiceImplementation(
                        loggerName: 'HomeController',
                      ),
                    ),
                    child: BlocBuilder<HomeControllerImplementation, HomeModel>(
                      builder: (BuildContext context1, HomeModel model) =>
                          HomeView(
                        model: model,
                        controller:
                            BlocProvider.of<HomeControllerImplementation>(
                          context1,
                        ),
                      ),
                    ),
                  ),
                  path: NavigationServiceUris.homeRouteUri.toString(),
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          builder: (_, GoRouterState state) =>
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
          ),
          parentNavigatorKey: rootNavigatorKey,
          path: NavigationServiceUris.ingredientsSortingRouteUri.toString(),
        ),
        GoRoute(
          builder: (_, GoRouterState state) =>
              BlocProvider<HistoryControllerImplementation>(
            create: (BuildContext context) => HistoryControllerImplementation(
              logger: LoggingServiceImplementation(
                loggerName: 'HistoryController',
              ),
              navigationService: context.read<NavigationService>(),
              persistenceService: context.read<PersistenceService>(),
            ),
            child: BlocBuilder<HistoryControllerImplementation, HistoryModel>(
              builder: (BuildContext context, HistoryModel model) =>
                  HistoryView(
                model: model,
                controller:
                    BlocProvider.of<HistoryControllerImplementation>(context),
              ),
            ),
          ),
          parentNavigatorKey: rootNavigatorKey,
          path: NavigationServiceUris.historyRouteUri.toString(),
        ),
        GoRoute(
          builder: (_, GoRouterState state) =>
              BlocProvider<SingleRecipeControllerImplementation>(
            create: (BuildContext context) =>
                SingleRecipeControllerImplementation(
              recipeId: state.pathParameters[
                      NavigationServiceUris.singleRecipeIdKey] ??
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
                controller:
                    BlocProvider.of<SingleRecipeControllerImplementation>(
                  context,
                ),
              ),
            ),
          ),
          parentNavigatorKey: rootNavigatorKey,
          path: NavigationServiceUris.singleRecipe(
            recipeId: ':${NavigationServiceUris.singleRecipeIdKey}',
          ).toString(),
        ),
      ],
    );
