import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/pages/common/type_adapters.dart';
import 'package:food_client/services/app_settings_service/app_settings_service.dart';
import 'package:food_client/services/app_settings_service/in_memory_app_settings_service.dart';
import 'package:food_client/services/navigation_service/go_router.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/services/persistence_service/persistence_service.dart';
import 'package:food_client/services/persistence_service/persistence_service_model.dart';
import 'package:food_client/services/web_client/web_client_service.dart';
import 'package:food_client/services/web_image_sizer/web_image_sizer_service.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  Hive
    ..registerAdapter(OptionUriAdapter())
    ..registerAdapter(PersistenceServiceModelSortingUnitAdapter())
    ..registerAdapter(PersistenceServiceModelSortingAdapter())
    ..registerAdapter(
      PersistenceServiceModelIngredientFamilyHelloFreshAdapter(),
    )
    ..registerAdapter(PersistenceServiceModelActiveSortingUnitAdapter())
    ..registerAdapter(PersistenceServiceModelActiveSortingCustomAdapter())
    ..registerAdapter(OptionDoubleAdapter())
    ..registerAdapter(OptionStringAdapter())
    ..registerAdapter(
      OptionPersistenceServiceModelShoppingListIngredientFamilyAdapter(),
    )
    ..registerAdapter(UriAdapter())
    ..registerAdapter(PersistenceServiceModelShoppingListIngredientAdapter())
    ..registerAdapter(
      PersistenceServiceModelShoppingListIngredientFamilyAdapter(),
    )
    ..registerAdapter(PersistenceServiceModelShoppingListRecipeAdapter())
    ..registerAdapter(PersistenceServiceModelHistoryRecipeAdapter())
    ..registerAdapter(
      PersistenceServiceModelHistoryRecipeOriginClickedAdapter(),
    );
  await Hive.initFlutter();
  await Hive.openBox<PersistenceServiceModelShoppingListRecipe>(
    ingredientsBoxName,
  );
  await Hive.openBox<PersistenceServiceModelSortingUnit>(
    sortingUnitsBoxName,
  );
  await Hive.openBox<PersistenceServiceModelActiveSorting>(
    activeShoppingListSortingBoxName,
  );
  await Hive.openBox<PersistenceServiceModelHistoryRecipe>(
    historyRecipeBoxName,
  );

  runApp(
    EasyLocalization(
      supportedLocales: const <Locale>[
        Locale('en'),
        Locale('de'),
      ],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      child: ProviderScope(
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends ConsumerWidget {
  final GoRouter goRouter1 = goRouter();
  MyApp({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) =>
      MultiBlocProvider(
        // ignore: always_specify_types
        providers: [
          BlocProvider<AppSettingsService>(
            create: (_) => InMemoryAppSettingsService.instance(),
          ),
          BlocProvider<WebClientService>(
            create: (_) => WebClientServiceImplementation.instance(),
          ),
          BlocProvider<NavigationService>(
            create: (_) => GoRouterNavigationService.instance(
              goRouter: goRouter1,
            ),
          ),
          BlocProvider<WebImageSizerService>(
            create: (_) => WebImageSizerServiceImplementation.instance(),
          ),
          BlocProvider<PersistenceService>(
            create: (_) => HivePersistenceService.instance(),
          ),
        ],

        child: MaterialApp.router(
          title: 'Food client',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              brightness: Brightness.dark,
              seedColor: Colors.amberAccent,
            ),
            useMaterial3: true,
          ),
          routerConfig: goRouter1,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
        ),
      );
}
