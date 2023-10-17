import 'dart:async';

import 'package:beamer/beamer.dart';
import 'package:flutter/foundation.dart';
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
import 'package:food_client/ui/single_recipe/single_recipe_controller.dart';
import 'package:food_client/ui/single_recipe/single_recipe_model.dart';
import 'package:food_client/ui/single_recipe/single_recipe_view.dart';
import 'package:fpdart/fpdart.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class Providers {
  AutoDisposeStateNotifierProvider<CartController, CartModel>
      cartControllerProvider =
      StateNotifierProvider.autoDispose<CartController, CartModel>(
    (
      AutoDisposeStateNotifierProviderRef<CartController, CartModel> ref,
    ) =>
        CartControllerImplementation(
      CartModel(
        recipes: <CartModelRecipe>[],
        ingredients: <CartModelIngredient>[],
        combineIngredients:
            ref.watch(providers.appSettingsServiceProvider).combineIngredients,
        sorting: const CartModelSorting.custom(
          customSortingIngredientIds: <String>[],
        ),
        sortingUnits: <CartModelSortingUnit>[],
      ),
      globalNavigationService: ref.read(
        navigationServiceProvider,
      ),
      persistenceService: ref.read(
        providers.persistenceServiceProvider.notifier,
      ),
      imageSizerService: ref.read(providers.webImageSizerServiceProvider),
    ),
  );

  AutoDisposeStateNotifierProvider<AccountController, AccountModel>
      accountControllerProvider =
      StateNotifierProvider.autoDispose<AccountController, AccountModel>(
    (
      AutoDisposeStateNotifierProviderRef<AccountController, AccountModel> ref,
    ) =>
        AccountControllerImplementation(
      const AccountModel(),
      navigationService: ref.read(navigationServiceProvider),
    ),
  );

  AutoDisposeStateNotifierProvider<IngredientsSortingController,
          IngredientsSortingModel> ingredientsSortingControllerProvider =
      StateNotifierProvider.autoDispose<IngredientsSortingController,
          IngredientsSortingModel>(
    (
      AutoDisposeStateNotifierProviderRef<IngredientsSortingController,
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
      navigationService: ref.read(navigationServiceProvider),
      persistenceService: ref.read(
        providers.persistenceServiceProvider.notifier,
      ),
    ),
  );

  StateNotifierProvider<HomeController, HomeModel> homeControllerProvider =
      StateNotifierProvider<HomeController, HomeModel>(
    (
      StateNotifierProviderRef<HomeController, HomeModel> ref,
    ) {
      HomeControllerImplementation controller = HomeControllerImplementation(
        HomeModel(
          allTags: <HomeModelFilterTag>[],
          allCuisines: <HomeModelFilterCuisine>[],
          pagingController: PagingController<int, HomeModelRecipe>(
            firstPageKey: 0,
          ),
          recipeLocales:
              ref.watch(providers.appSettingsServiceProvider).recipeLocales,
        ),
        globalNavigationService: ref.read(navigationServiceProvider),
        webClientService: ref.read(providers.webClientServiceProvider),
        webImageSizerService: ref.read(providers.webImageSizerServiceProvider),
      );
      unawaited(controller.init().run());
      return controller;
    },
  );

  AutoDisposeStateNotifierProviderFamily<SingleRecipeController,
          SingleRecipeModel, String> singleRecipeControllerProvider =
      AutoDisposeStateNotifierProviderFamily<SingleRecipeController,
          SingleRecipeModel, String>(
    (
      AutoDisposeStateNotifierProviderRef<SingleRecipeController,
              SingleRecipeModel>
          ref,
      String recipeId,
    ) =>
        SingleRecipeControllerImplementation(
      SingleRecipeModel(
        recipe: Either<Exception, Option<SingleRecipeModelRecipe>>.right(
          none(),
        ),
        selectedYield: none(),
      ),
      navigationService: ref.read(navigationServiceProvider),
      webClientService: ref.read(providers.webClientServiceProvider),
      webImageSizerService: ref.read(providers.webImageSizerServiceProvider),
      persistenceService:
          ref.watch(providers.persistenceServiceProvider.notifier),
      recipeId: recipeId,
    ),
  );

  StateNotifierProvider<PersistenceServiceAggregator, PersistenceServiceModel>
      persistenceServiceProvider = StateNotifierProvider<
          PersistenceServiceAggregator, PersistenceServiceModel>(
    (
      StateNotifierProviderRef<PersistenceServiceAggregator,
              PersistenceServiceModel>
          ref,
    ) =>
        PersistenceService(),
  );

  StateNotifierProvider<AppSettingsServiceAggregator, AppSettingsServiceModel>
      appSettingsServiceProvider = StateNotifierProvider<
          AppSettingsServiceAggregator, AppSettingsServiceModel>(
    (
      StateNotifierProviderRef<AppSettingsServiceAggregator,
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

  Provider<WebClientServiceAggregator> webClientServiceProvider =
      Provider<WebClientServiceAggregator>(
    (ProviderRef<WebClientServiceAggregator> ref) => WebClientService(),
  );

  Provider<WebImageSizerServiceAggregator> webImageSizerServiceProvider =
      Provider<WebImageSizerServiceAggregator>(
    (ProviderRef<WebImageSizerServiceAggregator> ref) => WebImageSizerService(),
  );

  Provider<LoggingServiceAggregator> loggingServiceProvider =
      Provider<LoggingServiceAggregator>(
    (ProviderRef<LoggingServiceAggregator> ref) => LoggingService(),
  );

  // Provider<BeamerDelegate> globalBeamerDelegate = Provider<BeamerDelegate>(
  //   (ProviderRef<BeamerDelegate> ref) => BeamerDelegate(
  //     initialPath: NavigationServiceUris.homeRouteUri.toString(),
  //     locationBuilder: RoutesLocationBuilder(
  //       routes: <Pattern, dynamic Function(BuildContext, BeamState, Object?)>{
  //         '${NavigationServiceUris.mainRouteUri}/*': (_, __, ___) => BeamPage(
  //               key: ValueKey<String>('${NavigationServiceUris.mainRouteUri}'),
  //               child: const MainView(),
  //               type: determinePageType(),
  //             ),
  //         NavigationServiceUris.homeSingleRecipeUri.toString():
  //             (_, BeamState state, ___) {
  //           String recipeId =
  //               state.queryParameters[NavigationServiceUris.singleRecipeIdKey]!;
  //           return BeamPage(
  //             key: ValueKey<String>(state.uri.toString()),
  //             child: SingleRecipeView(
  //               recipeId: recipeId,
  //             ),
  //             type: determinePageType(),
  //           );
  //         },
  //         NavigationServiceUris.singleRecipe.toString():
  //             (_, BeamState state, ___) {
  //           String recipeId =
  //               state.queryParameters[NavigationServiceUris.singleRecipeIdKey]!;
  //           return BeamPage(
  //             key: ValueKey<String>(state.uri.toString()),
  //             child: SingleRecipeView(
  //               recipeId: recipeId,
  //             ),
  //             type: determinePageType(),
  //           );
  //         },
  //       },
  //     ).call,
  //   ),
  // );

  // Provider<BeamerDelegate> bottomNavigationBarBeamerDelegate =
  //     Provider<BeamerDelegate>(
  //   (ProviderRef<BeamerDelegate> ref) => BeamerDelegate(
  //     initialPath: NavigationServiceUris.homeRouteUri.toString(),
  //     locationBuilder: RoutesLocationBuilder(
  //       routes: <Pattern, dynamic Function(BuildContext, BeamState, Object?)>{
  //         NavigationServiceUris.homeRouteUri.toString(): (_, __, ___) =>
  //             BeamPage(
  //               key: ValueKey<String>(
  //                 NavigationServiceUris.homeRouteUri.toString(),
  //               ),
  //               child: const HomeView(),
  //               type: determinePageType(),
  //             ),
  //         NavigationServiceUris.accountRouteUri.toString(): (_, __, ___) =>
  //             BeamPage(
  //               key: ValueKey<String>(
  //                 NavigationServiceUris.accountRouteUri.toString(),
  //               ),
  //               child: const AccountView(),
  //               type: determinePageType(),
  //             ),
  //         NavigationServiceUris.cartRouteUri.toString(): (_, __, ___) =>
  //             BeamPage(
  //               key: ValueKey<String>(
  //                 NavigationServiceUris.cartRouteUri.toString(),
  //               ),
  //               child: const CartView(),
  //               type: determinePageType(),
  //             ),
  //         NavigationServiceUris.ingredientsSortingRouteUri.toString(): (_, __,
  //                 ___) =>
  //             BeamPage(
  //               key: ValueKey<String>(
  //                 NavigationServiceUris.ingredientsSortingRouteUri.toString(),
  //               ),
  //               child: const IngredientsSortingView(),
  //               type: determinePageType(),
  //             ),
  //       },
  //     ).call,
  //   ),
  // );
}

late Providers providers;

BeamPageType determinePageType() => defaultTargetPlatform == TargetPlatform.iOS
    ? BeamPageType.cupertino
    : BeamPageType.material;
