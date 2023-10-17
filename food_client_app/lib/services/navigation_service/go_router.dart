import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' hide AsyncData;
import 'package:food_client/providers/providers.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/ui/account/account_controller.dart';
import 'package:food_client/ui/account/account_view.dart';
import 'package:food_client/ui/cart/cart_controller.dart';
import 'package:food_client/ui/cart/cart_view.dart';
import 'package:food_client/ui/home/home_view.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_view.dart';
import 'package:food_client/ui/main/main_controller.dart';
import 'package:food_client/ui/main/main_view.dart';
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
              builder: (_, GoRouterState state) {
                final AccountControllerImplementationProvider provider =
                    accountControllerImplementationProvider(
                  navigationService: ref.watch(navigationServiceProvider),
                );
                return Consumer(
                  builder: (_, WidgetRef ref, ___) => AccountView(
                    model: ref.watch(provider),
                    controller: ref.watch(provider.notifier),
                  ),
                );
              },
              path: NavigationServiceUris.accountRouteUri.toString(),
            ),
            GoRoute(
              builder: (_, GoRouterState state) {
                final CartControllerImplementationProvider provider =
                    cartControllerImplementationProvider(
                  navigationService: ref.watch(navigationServiceProvider),
                  combinedIngredients: ref
                      .watch(providers.appSettingsServiceProvider)
                      .combineIngredients,
                  imageSizerService:
                      ref.watch(providers.webImageSizerServiceProvider),
                  persistenceService:
                      ref.watch(providers.persistenceServiceProvider.notifier),
                );
                return Consumer(
                  builder: (_, WidgetRef ref, ___) => CartView(
                    model: ref.watch(provider),
                    controller: ref.watch(provider.notifier),
                  ),
                );
              },
              path: NavigationServiceUris.cartRouteUri.toString(),
            ),
            GoRoute(
              builder: (_, GoRouterState state) => Consumer(
                builder: (_, WidgetRef ref, ___) => const HomeView(),
              ),
              path: NavigationServiceUris.homeRouteUri.toString(),
            ),
          ],
        ),
        GoRoute(
          builder: (_, GoRouterState state) => Consumer(
            builder: (_, WidgetRef ref, ___) => const IngredientsSortingView(),
          ),
          path: NavigationServiceUris.ingredientsSortingRouteUri.toString(),
        ),
        GoRoute(
          builder: (_, GoRouterState state) => Consumer(
            builder: (_, WidgetRef ref, ___) => SingleRecipeView(
              recipeId: state.pathParameters[
                      NavigationServiceUris.singleRecipeIdKey] ??
                  '', // TODO: handle error
            ),
          ),
          path: NavigationServiceUris.singleRecipe.toString(),
        ),
      ],
    );

abstract class GoRouterNavigationService {
  void openUri({required final Uri uri});
}
