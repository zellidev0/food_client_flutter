import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/cubits/features/cart/cart_cubit.dart';
import 'package:food_client/cubits/features/cart/cart_state.dart';
import 'package:food_client/cubits/features/ingredients_sorting/ingredients_sorting_cubit.dart';
import 'package:food_client/cubits/features/main/main_cubit.dart';
import 'package:food_client/cubits/features/main/main_state.dart';
import 'package:food_client/cubits/features/single_recipe/single_recipe_cubit.dart';
import 'package:food_client/pages/features/account/account_view.dart';
import 'package:food_client/pages/features/cart/cart_view.dart';
import 'package:food_client/pages/features/cart/services/cart_navigation_service.dart';
import 'package:food_client/pages/features/cart/services/cart_persistence_service.dart';
import 'package:food_client/pages/features/cart/services/cart_web_image_sizer_service.dart';
import 'package:food_client/pages/features/ingredients_sorting/ingredients_sorting_view.dart';
import 'package:food_client/pages/features/ingredients_sorting/services/ingredients_sorting_navigation_service.dart';
import 'package:food_client/pages/features/ingredients_sorting/services/persistance_service/ingredients_sorting_persistence_service.dart';
import 'package:food_client/pages/features/ingredients_sorting/services/web_service/ingredients_sorting_web_client_service.dart';
import 'package:food_client/pages/features/ingredients_sorting/services/web_service/ingredients_sorting_web_image_sizer_service.dart';
import 'package:food_client/pages/features/main/main_view.dart';
import 'package:food_client/pages/features/main/services/main_navigation_service.dart';
import 'package:food_client/pages/features/single_recipe/services/persistance_service/single_recipe_persistence_service.dart';
import 'package:food_client/pages/features/single_recipe/services/single_recipe_navigation_service.dart';
import 'package:food_client/pages/features/single_recipe/services/web_service/single_recipe_web_client_service.dart';
import 'package:food_client/pages/features/single_recipe/services/web_service/single_recipe_web_image_sizer_service.dart';
import 'package:food_client/pages/features/single_recipe/single_recipe_view.dart';
import 'package:food_client/services/app_settings_service/app_settings_service.dart';
import 'package:food_client/services/logging_service/logging_service.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/services/web_image_sizer/web_image_sizer_service.dart';
import 'package:food_client/ui/history/history_controller.dart';
import 'package:food_client/ui/history/history_model.dart';
import 'package:food_client/ui/history/history_view.dart';
import 'package:food_client/ui/history/services/history_navigation_service.dart';
import 'package:food_client/ui/history/services/history_persistence_service.dart';
import 'package:food_client/ui/home/home_controller.dart';
import 'package:food_client/ui/home/home_model.dart';
import 'package:food_client/ui/home/home_view.dart';
import 'package:food_client/ui/home/services/home_navigation_service.dart';
import 'package:food_client/ui/home/services/home_persistence_service.dart';
import 'package:food_client/ui/home/services/home_web_client_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:go_router/go_router.dart';
import 'package:nested/nested.dart';

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
          builder: (_, __, Widget child) => BlocProvider<MainCubit>(
            create: (BuildContext context) => MainCubit(
              navigationService: context.read<MainNavigationService>(),
            ),
            child: BlocBuilder<MainCubit, MainState>(
              builder: (BuildContext context, MainState model) => MainView(
                child: child,
              ),
            ),
          ),
          branches: <StatefulShellBranch>[
            StatefulShellBranch(
              routes: <RouteBase>[
                GoRoute(
                  builder: (_, GoRouterState state) => const AccountView(),
                  path: NavigationServiceUris.accountRouteUri.toString(),
                ),
              ],
            ),
            StatefulShellBranch(
              routes: <RouteBase>[
                GoRoute(
                  builder: (_, GoRouterState state) => BlocProvider<CartCubit>(
                    create: (BuildContext context) => CartCubit(
                      combinedIngredients: context
                          .read<AppSettingsService>()
                          .state
                          .combineIngredients,
                      imageSizerService:
                          context.read<CartWebImageSizerService>(),
                      navigationService: context.read<CartNavigationService>(),
                      persistenceService:
                          context.read<CartPersistenceService>(),
                      logger: LoggingServiceImplementation(
                        loggerName: 'CartController',
                      ),
                    ),
                    child: BlocBuilder<CartCubit, CartState>(
                      builder: (BuildContext context, CartState model) =>
                          const CartView(),
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
                      navigationService: context.read<HomeNavigationService>(),
                      webClientService: context.read<HomeWebClientService>(),
                      webImageSizerService:
                          context.read<WebImageSizerService>(),
                      persistenceService:
                          context.read<HomePersistenceService>(),
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
          builder: (_, GoRouterState state) => MultiBlocProvider(
            providers: <SingleChildWidget>[
              BlocProvider<IngredientsSortingCubit>(
                create: (BuildContext context) => IngredientsSortingCubit(
                  loggingService: LoggingServiceImplementation(
                    loggerName: 'IngredientsSortingController',
                  ),
                  navigationService:
                      context.read<IngredientsSortingNavigationService>(),
                  persistenceService:
                      context.read<IngredientsSortingPersistenceService>(),
                  webClientService:
                      context.read<IngredientsSortingWebClientService>(),
                  webImageSizerService:
                      context.read<IngredientsSortingWebImageSizerService>(),
                ),
              ),
            ],
            child: const IngredientsSortingView(),
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
              navigationService: context.read<HistoryNavigationService>(),
              persistenceService: context.read<HistoryPersistenceService>(),
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
          builder: (_, GoRouterState state) => Scaffold(
            extendBodyBehindAppBar: true,
            body: BlocProvider<SingleRecipeCubit>(
              create: (BuildContext context) => SingleRecipeCubit(
                navigationService:
                    context.read<SingleRecipeNavigationService>(),
                selectedYield: const None<int>(),
                recipeId: state.pathParameters[
                        NavigationServiceUris.singleRecipeIdKey] ??
                    '',
                persistenceService:
                    context.read<SingleRecipePersistenceService>(),
                webClientService: context.read<SingleRecipeWebClientService>(),
                webImageSizerService:
                    context.read<SingleRecipeWebImageSizerService>(),
                logger: LoggingServiceImplementation(
                  loggerName: 'SingleRecipeCubit',
                ),
              ),
              child: const SingleRecipeView(),
            ),
          ),
          parentNavigatorKey: rootNavigatorKey,
          path: NavigationServiceUris.singleRecipe(
            recipeId: ':${NavigationServiceUris.singleRecipeIdKey}',
          ).toString(),
        ),
      ],
    );
