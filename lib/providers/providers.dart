import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/services/persistence_service/persistence_service.dart';
import 'package:food_client/services/recipe_language_service/recipe_language_service.dart';
import 'package:food_client/services/web_client/web_client_service.dart';
import 'package:food_client/services/web_image_sizer/web_image_sizer_service.dart';
import 'package:food_client/ui/cart/cart_controller.dart';
import 'package:food_client/ui/cart/cart_model.dart';
import 'package:food_client/ui/cart/cart_view.dart';
import 'package:food_client/ui/home/home_controller.dart';
import 'package:food_client/ui/home/home_model.dart';
import 'package:food_client/ui/home/home_view.dart';
import 'package:food_client/ui/main/main_view.dart';
import 'package:food_client/ui/single_recipe/single_recipe_controller.dart';
import 'package:food_client/ui/single_recipe/single_recipe_model.dart';
import 'package:food_client/ui/single_recipe/single_recipe_view.dart';
import 'package:fpdart/fpdart.dart';

class Providers {
  final AutoDisposeStateNotifierProvider<CartController, CartModel>
      cartControllerProvider =
      StateNotifierProvider.autoDispose<CartController, CartModel>(
    (
      final AutoDisposeStateNotifierProviderRef<CartController, CartModel> ref,
    ) =>
        CartControllerImplementation(
      const CartModel(ingredients: <CartModelIngredient>[]),
      navigationService: ref.read(
        providers.bottomNavigationBarNavigationServiceProvider,
      ),
      persistenceService: ref.read(providers.persistenceServiceProvider),
    ),
  );

  final AutoDisposeStateNotifierProvider<HomeController, HomeModel>
      homeControllerProvider =
      StateNotifierProvider.autoDispose<HomeController, HomeModel>(
    (
      final AutoDisposeStateNotifierProviderRef<HomeController, HomeModel> ref,
    ) =>
        HomeControllerImplementation(
      const HomeModel(
        allRecipes: <HomeModelRecipe>[],
        filteredRecipes: <HomeModelRecipe>[],
        allTags: <HomeModelFilterTag>[],
        allCuisines: <HomeModelFilterCuisine>[],
      ),
      navigationService: ref.read(
        providers.bottomNavigationBarNavigationServiceProvider,
      ),
      webClientService: ref.read(providers.webClientServiceProvider),
      webImageSizerService: ref.read(providers.webImageSizerServiceProvider),
      recipeLanguageService: ref.read(providers.recipeLanguageServiceProvider),
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
      persistenceService: ref.read(providers.persistenceServiceProvider), recipeId: recipeId,
    ),
  );

  final Provider<PersistenceServiceAggregator> persistenceServiceProvider =
      Provider<PersistenceServiceAggregator>(
    (final ProviderRef<PersistenceServiceAggregator> ref) =>
        PersistenceService(),
  );
  final Provider<RecipeLanguageServiceAggregator>
      recipeLanguageServiceProvider = Provider<RecipeLanguageServiceAggregator>(
    (final ProviderRef<RecipeLanguageServiceAggregator> ref) =>
        RecipeLanguageService(),
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
      initialPath: '*',
      locationBuilder: RoutesLocationBuilder(
        routes: <Pattern, dynamic Function(BuildContext, BeamState, Object?)>{
          '*': (final _, final __, final ___) => const MainView(),
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
              (final _, final __, final ___) => const HomeView(),
          NavigationServiceUris.cartRouteUri.toString():
              (final _, final __, final ___) => const CartView(),
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
    ),
  );
}

Providers providers = Providers();