import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/commons/view_state.dart';
import 'package:food_client/services/app_settings_service/app_settings_service.dart';
import 'package:food_client/services/logging_service/logging_service.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/services/persistence_service/persistence_service.dart';
import 'package:food_client/services/web_client/web_client_service.dart';
import 'package:food_client/services/web_image_sizer/web_image_sizer_service.dart';
import 'package:food_client/ui/home/home_controller.dart';
import 'package:food_client/ui/home/home_controller_implementation.dart';
import 'package:food_client/ui/home/home_model.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_providers.g.dart';

const int widthPixels = 600;
const int recipesPerPage = 16;

@riverpod
ViewState<List<HomeModelFilter>> homeModelFilters(
  HomeModelFiltersRef ref,
) =>
    ref.watch(
      _homeControllerProvider(ref).select((HomeModel value) => value.filters),
    );

@riverpod
ViewState<List<HomeModelRecipe>> homeModelRecipes(
  HomeModelRecipesRef ref,
) =>
    ref.watch(
      _homeControllerProvider(ref).select((HomeModel value) => value.recipes),
    );

@riverpod
PagingController<int, HomeModelRecipe> homeModelPagingController(
  HomeModelPagingControllerRef ref,
) =>
    ref.watch(
      _homeControllerProvider(ref)
          .select((HomeModel value) => value.pagingController),
    );

@riverpod
HomeController homeController<T>(
  HomeControllerRef ref,
) =>
    ref.read(_homeControllerProvider(ref).notifier);

HomeControllerImplementationProvider _homeControllerProvider<T>(
  AutoDisposeRef<T> ref,
) =>
    homeControllerImplementationProvider(
      recipeLocales: ref.watch(appSettingsServiceProvider).recipeLocales,
      webClientService: ref.watch(webClientServiceProvider),
      persistenceService: ref.watch(persistenceServiceProvider.notifier),
      webImageSizerService: ref.watch(webImageSizerServiceProvider),
      globalNavigationService: ref.watch(navigationServiceProvider),
      logger: ref.watch(
        loggingServiceProvider(loggerName: 'HomeController'),
      ),
    );
