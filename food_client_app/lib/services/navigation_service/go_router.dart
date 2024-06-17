import 'package:flutter/foundation.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/services/navigation_service/typed_routes.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart' hide AsyncData;

part 'go_router.g.dart';

const String dailyPulseDailyPulseIdPathParameter = 'dailyPulseId';

@riverpod
GoRouter goRouter(final GoRouterRef ref) => GoRouter(
      debugLogDiagnostics: kDebugMode,
      initialLocation: NavigationServiceUris.homeRoute,
      navigatorKey: rootNavigatorKey,
      routes: $appRoutes,
    );

abstract class GoRouterNavigationService with GeneralNavigationService {
  void openUri({required final Uri uri});
}
