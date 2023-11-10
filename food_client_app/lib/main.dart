import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/commons/type_adapters.dart';
import 'package:food_client/generated/codegen_loader.g.dart';
import 'package:food_client/services/navigation_service/go_router.dart';
import 'package:food_client/services/persistence_service/persistence_service.dart';
import 'package:food_client/services/persistence_service/persistence_service_model.dart';
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
      assetLoader: const CodegenLoader(),
      supportedLocales: const <Locale>[
        Locale('en'),
        Locale('de'),
      ],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      child: const ProviderScope(
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) =>
      MaterialApp.router(
        title: 'Food client',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            // brightness:
            //     MediaQueryData.fromWindow(WidgetsBinding.instance.window)
            //         .platformBrightness,
            brightness: Brightness.dark,
            seedColor: Colors.amberAccent,
          ),
          useMaterial3: true,
        ),
        routerConfig: ref.watch(goRouterProvider),
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
      );
}
