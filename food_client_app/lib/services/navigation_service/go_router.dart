import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' hide AsyncData;
import 'package:food_client/services/app_settings_service/app_settings_service.dart';
import 'package:food_client/services/logging_service/logging_service.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/services/persistence_service/persistence_service.dart';
import 'package:food_client/services/web_client/web_client_service.dart';
import 'package:food_client/services/web_image_sizer/web_image_sizer_service.dart';
import 'package:food_client/ui/account/account_controller.dart';
import 'package:food_client/ui/account/account_view.dart';
import 'package:food_client/ui/cart/cart_controller.dart';
import 'package:food_client/ui/cart/cart_view.dart';
import 'package:food_client/ui/home/home_controller.dart';
import 'package:food_client/ui/home/home_view.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_controller.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_view.dart';
import 'package:food_client/ui/main/main_controller.dart';
import 'package:food_client/ui/main/main_view.dart';
import 'package:food_client/ui/single_recipe/single_recipe_controller.dart';
import 'package:food_client/ui/single_recipe/single_recipe_view.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart' hide AsyncData;

part 'go_router.g.dart';

const String dailyPulseDailyPulseIdPathParameter = 'dailyPulseId';

final GlobalKey<NavigatorState> rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

final GlobalKey<NavigatorState> shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

@riverpod
GoRouter goRouter(final GoRouterRef ref) => GoRouter(
      debugLogDiagnostics: kDebugMode,
      initialLocation: NavigationServiceUris.homeRouteUri.toString(),
      navigatorKey: rootNavigatorKey,
      routes: <RouteBase>[
        ShellRoute(
          builder: (_, __, Widget child) => Consumer(
            builder: (_, WidgetRef ref, __) {
              final MainControllerImplementationProvider provider =
                  mainControllerImplementationProvider(
                navigationService: ref.watch(navigationServiceProvider),
              );
              return Consumer(
                builder: (_, WidgetRef ref, ___) => MainView(
                  controller: ref.watch(provider.notifier),
                  model: ref.watch(provider),
                  child: child,
                ),
              );
            },
          ),
          navigatorKey: shellNavigatorKey,
          routes: <GoRoute>[
            GoRoute(
              builder: (_, GoRouterState state) => Consumer(
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
              ),
              path: NavigationServiceUris.accountRouteUri.toString(),
            ),
            GoRoute(
              builder: (_, GoRouterState state) => Consumer(
                builder: (_, WidgetRef ref, ___) {
                  final CartControllerImplementationProvider provider =
                      cartControllerImplementationProvider(
                    navigationService: ref.watch(navigationServiceProvider),
                    combinedIngredients: ref
                        .watch(appSettingsServiceProvider)
                        .combineIngredients,
                    imageSizerService: ref.read(webImageSizerServiceProvider),
                    persistenceService:
                        ref.watch(persistenceServiceProvider.notifier),
                  );
                  return CartView(
                    model: ref.watch(provider),
                    controller: ref.watch(provider.notifier),
                  );
                },
              ),
              path: NavigationServiceUris.cartRouteUri.toString(),
            ),
            GoRoute(
              builder: (_, GoRouterState state) => Consumer(
                builder: (_, WidgetRef ref, ___) {
                  final HomeControllerImplementationProvider provider =
                      homeControllerImplementationProvider(
                    recipeLocales:
                        ref.watch(appSettingsServiceProvider).recipeLocales,
                    globalNavigationService:
                        ref.read(navigationServiceProvider),
                    webClientService: ref.watch(webClientServiceProvider),
                    webImageSizerService:
                        ref.watch(webImageSizerServiceProvider),
                    loggingService: ref.watch(
                      loggingServiceProvider(loggerName: 'HomeController'),
                    ),
                  );
                  return HomeView(
                    model: ref.watch(provider),
                    controller: ref.watch(provider.notifier),
                  );
                },
              ),
              path: NavigationServiceUris.homeRouteUri.toString(),
            ),
          ],
        ),
        GoRoute(
          builder: (_, GoRouterState state) => Consumer(
            builder: (_, WidgetRef ref, ___) {
              final IngredientsSortingControllerImplementationProvider
                  provider = IngredientsSortingControllerImplementationProvider(
                webClientService: ref.read(webClientServiceProvider),
                webImageSizerService: ref.read(webImageSizerServiceProvider),
                loggingService: ref.read(
                  loggingServiceProvider(
                    loggerName: 'IngredientsSortingController',
                  ),
                ),
                navigationService: ref.read(navigationServiceProvider),
                persistenceService:
                    ref.watch(persistenceServiceProvider.notifier),
              );
              return IngredientsSortingView(
                model: ref.watch(provider),
                controller: ref.watch(provider.notifier),
              );
            },
          ),
          parentNavigatorKey: rootNavigatorKey,
          path: NavigationServiceUris.ingredientsSortingRouteUri.toString(),
        ),
        GoRoute(
          builder: (_, GoRouterState state) => Consumer(
            builder: (_, WidgetRef ref, ___) {
              final String recipeId = state.pathParameters[
                      NavigationServiceUris.singleRecipeIdKey] ??
                  ''; // TODO(julian): handle error
              final SingleRecipeControllerImplementationProvider provider =
                  singleRecipeControllerImplementationProvider(
                navigationService: ref.read(navigationServiceProvider),
                webClientService: ref.read(webClientServiceProvider),
                webImageSizerService: ref.read(webImageSizerServiceProvider),
                persistenceService:
                    ref.watch(persistenceServiceProvider.notifier),
                recipeId: recipeId,
                loggingService: ref.watch(
                  loggingServiceProvider(loggerName: 'SingleRecipeController'),
                ),
              );
              return SingleRecipeView(
                model: ref.watch(provider),
                controller: ref.watch(provider.notifier),
                recipeId: recipeId,
              );
            },
          ),
          parentNavigatorKey: rootNavigatorKey,
          path: NavigationServiceUris.singleRecipe.toString(),
        ),
      ],
    );

abstract class GoRouterNavigationService {
  void openUri({required final Uri uri});
}
