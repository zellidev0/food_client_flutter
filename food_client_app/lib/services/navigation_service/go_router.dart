import 'package:flutter/foundation.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/services/navigation_service/typed_routes.dart';
import 'package:go_router/go_router.dart';

const String dailyPulseDailyPulseIdPathParameter = 'dailyPulseId';

GoRouter goRouter = GoRouter(
  debugLogDiagnostics: kDebugMode,
  initialLocation: NavigationServiceUris.homeRoute,
  navigatorKey: rootNavigatorKey,
  routes: $appRoutes,
);
