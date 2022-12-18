import 'package:beamer/beamer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/commons/type_adapters.dart';
import 'package:food_client/providers/providers.dart';
import 'package:food_client/services/persistence_service/persistence_service.dart';
import 'package:food_client/services/persistence_service/persistence_service_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  Hive
    ..registerAdapter(OptionUriAdapter())
    ..registerAdapter(OptionDoubleAdapter())
    ..registerAdapter(OptionStringAdapter())
    ..registerAdapter(OptionPersistenceServiceModelShoppingListIngredientFamilyAdapter())
    ..registerAdapter(UriAdapter())
    ..registerAdapter(PersistenceServiceModelShoppingListIngredientAdapter())
    ..registerAdapter(PersistenceServiceModelShoppingListIngredientFamilyAdapter())
    ..registerAdapter(PersistenceServiceModelShoppingListRecipeAdapter());
  await Hive.initFlutter();
  await Hive.openBox<PersistenceServiceModelShoppingListRecipe>(
    ingredientsBoxName,
  );

  providers = Providers();

  runApp(
    EasyLocalization(
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
        routeInformationParser: BeamerParser(),
        backButtonDispatcher: BeamerBackButtonDispatcher(
          delegate: ref.read(providers.globalBeamerDelegate),
        ),
        routerDelegate: ref.read(providers.globalBeamerDelegate),
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
      );
}
