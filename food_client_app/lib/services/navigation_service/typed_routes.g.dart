// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'typed_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $shellRouteData,
      $singleRecipePageRoute,
    ];

RouteBase get $shellRouteData => StatefulShellRouteData.$route(
      restorationScopeId: ShellRouteData.$restorationScopeId,
      navigatorContainerBuilder: ShellRouteData.$navigatorContainerBuilder,
      factory: $ShellRouteDataExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          restorationScopeId: HomePageBranchData.$restorationScopeId,
          routes: [
            GoRouteData.$route(
              path: '/home',
              factory: $HomePageRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          restorationScopeId: CartPageBranchData.$restorationScopeId,
          routes: [
            GoRouteData.$route(
              path: '/cart',
              factory: $CartPageRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          restorationScopeId: AccountPageBranchData.$restorationScopeId,
          routes: [
            GoRouteData.$route(
              path: '/account',
              factory: $AccountPageRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $ShellRouteDataExtension on ShellRouteData {
  static ShellRouteData _fromState(GoRouterState state) =>
      const ShellRouteData();
}

extension $HomePageRouteExtension on HomePageRoute {
  static HomePageRoute _fromState(GoRouterState state) => HomePageRoute();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CartPageRouteExtension on CartPageRoute {
  static CartPageRoute _fromState(GoRouterState state) => CartPageRoute();

  String get location => GoRouteData.$location(
        '/cart',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AccountPageRouteExtension on AccountPageRoute {
  static AccountPageRoute _fromState(GoRouterState state) => AccountPageRoute();

  String get location => GoRouteData.$location(
        '/account',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $singleRecipePageRoute => GoRouteData.$route(
      path: '/recipe/:recipeId',
      factory: $SingleRecipePageRouteExtension._fromState,
    );

extension $SingleRecipePageRouteExtension on SingleRecipePageRoute {
  static SingleRecipePageRoute _fromState(GoRouterState state) =>
      SingleRecipePageRoute(
        recipeId: state.pathParameters['recipeId']!,
      );

  String get location => GoRouteData.$location(
        '/recipe/${Uri.encodeComponent(recipeId)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
