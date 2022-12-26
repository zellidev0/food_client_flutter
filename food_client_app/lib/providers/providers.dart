import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/services/app_settings_service/app_settings_service.dart';
import 'package:food_client/services/app_settings_service/app_settings_service_model.dart';
import 'package:food_client/services/logging_service/logging_service.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/services/persistence_service/persistence_service.dart';
import 'package:food_client/services/persistence_service/persistence_service_model.dart';
import 'package:food_client/services/web_client/web_client_service.dart';
import 'package:food_client/services/web_image_sizer/web_image_sizer_service.dart';
import 'package:food_client/ui/account/account_controller.dart';
import 'package:food_client/ui/account/account_model.dart';
import 'package:food_client/ui/account/account_view.dart';
import 'package:food_client/ui/cart/cart_controller.dart';
import 'package:food_client/ui/cart/cart_model.dart';
import 'package:food_client/ui/cart/cart_view.dart';
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
import 'package:fpdart/fpdart.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:uuid/uuid.dart';

class Providers {
  final AutoDisposeStateNotifierProvider<CartController, CartModel>
      cartControllerProvider =
      StateNotifierProvider.autoDispose<CartController, CartModel>(
    (
      final AutoDisposeStateNotifierProviderRef<CartController, CartModel> ref,
    ) =>
        CartControllerImplementation(
      CartModel(
        recipes: <CartModelRecipe>[],
        ingredients: <CartModelIngredient>[],
        combineIngredients:
            ref.watch(providers.appSettingsServiceProvider).combineIngredients,
        sorting: const CartModelSorting.custom(
          customSortingIngredientIds: [],
        ),
        sortingUnits: <CartModelSortingUnit>[],
      ),
      navigationService: ref.read(
        providers.bottomNavigationBarNavigationServiceProvider,
      ),
      persistenceService: ref.read(
        providers.persistenceServiceProvider.notifier,
      ),
      imageSizerService: ref.read(providers.webImageSizerServiceProvider),
    ),
  );

  final AutoDisposeStateNotifierProvider<AccountController, AccountModel>
      accountControllerProvider =
      StateNotifierProvider.autoDispose<AccountController, AccountModel>(
    (
      final AutoDisposeStateNotifierProviderRef<AccountController, AccountModel>
          ref,
    ) =>
        AccountControllerImplementation(
      const AccountModel(),
      navigationService: ref.read(
        providers.bottomNavigationBarNavigationServiceProvider,
      ),
    ),
  );

  final AutoDisposeStateNotifierProvider<IngredientsSortingController,
          IngredientsSortingModel> ingredientsSortingControllerProvider =
      StateNotifierProvider.autoDispose<IngredientsSortingController,
          IngredientsSortingModel>(
    (
      final AutoDisposeStateNotifierProviderRef<IngredientsSortingController,
              IngredientsSortingModel>
          ref,
    ) =>
        IngredientsSortingControllerImplementation(
      IngredientsSortingModel(
        units: <IngredientsSortingModelUnit>[],
        currentlyEditingUnitName: none(),
      ),
      webClientService: ref.read(providers.webClientServiceProvider),
      webImageSizerService: ref.read(providers.webImageSizerServiceProvider),
      loggingService: ref.read(providers.loggingServiceProvider),
      navigationService: ref.read(
        providers.bottomNavigationBarNavigationServiceProvider,
      ),
      persistenceService: ref.read(
        providers.persistenceServiceProvider.notifier,
      ),
    ),
  );

  final StateNotifierProvider<MainController, MainModel>
      mainControllerProvider = StateNotifierProvider<MainController, MainModel>(
    (
      final StateNotifierProviderRef<MainController, MainModel> ref,
    ) =>
        MainControllerImplementation(
      const MainModel(bottomNavigationBarIndex: 0),
      navigationService: ref.read(
        providers.bottomNavigationBarNavigationServiceProvider,
      ),
    ),
  );

  final StateNotifierProvider<HomeController, HomeModel>
      homeControllerProvider = StateNotifierProvider<HomeController, HomeModel>(
    (
      final StateNotifierProviderRef<HomeController, HomeModel> ref,
    ) =>
        HomeControllerImplementation(
      HomeModel(
        allTags: <HomeModelFilterTag>[],
        allCuisines: <HomeModelFilterCuisine>[],
        pagingController: PagingController<int, HomeModelRecipe>(
          firstPageKey: 0,
        ),
        recipeLocales:
            ref.watch(providers.appSettingsServiceProvider).recipeLocales,
      ),
      navigationService: ref.read(
        providers.bottomNavigationBarNavigationServiceProvider,
      ),
      webClientService: ref.read(providers.webClientServiceProvider),
      webImageSizerService: ref.read(providers.webImageSizerServiceProvider),
    ),
  );

  final AutoDisposeStateNotifierProviderFamily<SingleRecipeController,
          SingleRecipeModel, String> singleRecipeControllerProvider =
      AutoDisposeStateNotifierProviderFamily<SingleRecipeController,
          SingleRecipeModel, String>(
    (
      final AutoDisposeStateNotifierProviderRef<SingleRecipeController,
              SingleRecipeModel>
          ref,
      final String recipeId,
    ) =>
        SingleRecipeControllerImplementation(
      SingleRecipeModel(
        recipe: Either<Exception, Option<SingleRecipeModelRecipe>>.right(
          none(),
        ),
        selectedYield: none(),
      ),
      navigationService: ref.read(
        providers.bottomNavigationBarNavigationServiceProvider,
      ),
      webClientService: ref.read(providers.webClientServiceProvider),
      webImageSizerService: ref.read(providers.webImageSizerServiceProvider),
      persistenceService:
          ref.watch(providers.persistenceServiceProvider.notifier),
      recipeId: recipeId,
    ),
  );

  final StateNotifierProvider<PersistenceServiceAggregator,
          PersistenceServiceModel> persistenceServiceProvider =
      StateNotifierProvider<PersistenceServiceAggregator,
          PersistenceServiceModel>(
    (
      final StateNotifierProviderRef<PersistenceServiceAggregator,
              PersistenceServiceModel>
          ref,
    ) =>
        PersistenceService(),
  );

  final StateNotifierProvider<AppSettingsServiceAggregator,
          AppSettingsServiceModel> appSettingsServiceProvider =
      StateNotifierProvider<AppSettingsServiceAggregator,
          AppSettingsServiceModel>(
    (
      final StateNotifierProviderRef<AppSettingsServiceAggregator,
              AppSettingsServiceModel>
          ref,
    ) =>
        AppSettingsService(
      const AppSettingsServiceModel(
        recipeLocales: <Locale>[Locale('DE')],
        combineIngredients: true,
      ),
    ),
  );

  final Provider<WebClientServiceAggregator> webClientServiceProvider =
      Provider<WebClientServiceAggregator>(
    (final ProviderRef<WebClientServiceAggregator> ref) => WebClientService(),
  );

  final Provider<WebImageSizerServiceAggregator> webImageSizerServiceProvider =
      Provider<WebImageSizerServiceAggregator>(
    (final ProviderRef<WebImageSizerServiceAggregator> ref) =>
        WebImageSizerService(),
  );

  final Provider<LoggingServiceAggregator> loggingServiceProvider =
      Provider<LoggingServiceAggregator>(
    (final ProviderRef<LoggingServiceAggregator> ref) => LoggingService(),
  );

  final Provider<NavigationServiceAggregator> globalNavigationServiceProvider =
      Provider<NavigationServiceAggregator>(
    (final ProviderRef<NavigationServiceAggregator> ref) =>
        BeamerNavigationService(
      beamerDelegate: ref.read(providers.globalBeamerDelegate),
    ),
  );

  final Provider<NavigationServiceAggregator>
      bottomNavigationBarNavigationServiceProvider =
      Provider<NavigationServiceAggregator>(
    (final ProviderRef<NavigationServiceAggregator> ref) =>
        BeamerNavigationService(
      beamerDelegate: ref.read(providers.bottomNavigationBarBeamerDelegate),
    ),
  );

  final Provider<BeamerDelegate> globalBeamerDelegate =
      Provider<BeamerDelegate>(
    (final ProviderRef<BeamerDelegate> ref) => BeamerDelegate(
      initialPath: NavigationServiceUris.homeRouteUri.toString(),
      locationBuilder: RoutesLocationBuilder(
        routes: <Pattern, dynamic Function(BuildContext, BeamState, Object?)>{
          '${NavigationServiceUris.mainRouteUri}/*':
              (final _, final __, final ___) => const MainView(),
        },
      ),
    ),
  );

  final Provider<BeamerDelegate> bottomNavigationBarBeamerDelegate =
      Provider<BeamerDelegate>(
    (final ProviderRef<BeamerDelegate> ref) => BeamerDelegate(
      initialPath: NavigationServiceUris.homeRouteUri.toString(),
      locationBuilder: RoutesLocationBuilder(
        routes: <Pattern, dynamic Function(BuildContext, BeamState, Object?)>{
          NavigationServiceUris.homeRouteUri.toString():
              (final _, final __, final ___) => BeamPage(
                    key: ValueKey<String>(
                      NavigationServiceUris.homeRouteUri.toString(),
                    ),
                    child: const HomeView(),
                    type: BeamPageType.noTransition,
                  ),
          NavigationServiceUris.accountRouteUri.toString(): (
            final _,
            final __,
            final ___,
          ) =>
              BeamPage(
                key: ValueKey<String>(
                  NavigationServiceUris.accountRouteUri.toString(),
                ),
                child: const AccountView(),
                type: BeamPageType.noTransition,
              ),
          NavigationServiceUris.cartRouteUri.toString():
              (final _, final __, final ___) => BeamPage(
                    key: ValueKey<String>(
                      NavigationServiceUris.cartRouteUri.toString(),
                    ),
                    child: const CartView(),
                    type: BeamPageType.noTransition,
                  ),
          NavigationServiceUris.ingredientsSortingRouteUri.toString(): (
            final _,
            final __,
            final ___,
          ) =>
              BeamPage(
                key: ValueKey<String>(
                  NavigationServiceUris.ingredientsSortingRouteUri.toString(),
                ),
                child: const IngredientsSortingView(),
                type: BeamPageType.noTransition,
              ),
          NavigationServiceUris.singleRecipeUri.toString(): (
            final _,
            final BeamState state,
            final ___,
          ) {
            final String recipeId =
                state.queryParameters[NavigationServiceUris.singleRecipeIdKey]!;
            return BeamPage(
              key: ValueKey<String>('singleRecipe-$recipeId'),
              child: SingleRecipeView(
                recipeId: recipeId,
              ),
              type: BeamPageType.noTransition,
            );
          },
        },
      ),
    ),
  );
}

late Providers providers;
