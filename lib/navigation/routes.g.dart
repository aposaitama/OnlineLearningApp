// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
  $registerRoute,
  $loginRoute,
  $phoneLinkingRoute,
  $phoneVerifyRoute,
  $authGateRoute,
  $rootShellRoute,
];

RouteBase get $registerRoute => GoRouteData.$route(
  path: '/register',

  factory: $RegisterRouteExtension._fromState,
);

extension $RegisterRouteExtension on RegisterRoute {
  static RegisterRoute _fromState(GoRouterState state) => const RegisterRoute();

  String get location => GoRouteData.$location('/register');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $loginRoute => GoRouteData.$route(
  path: '/login',

  factory: $LoginRouteExtension._fromState,
);

extension $LoginRouteExtension on LoginRoute {
  static LoginRoute _fromState(GoRouterState state) => const LoginRoute();

  String get location => GoRouteData.$location('/login');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $phoneLinkingRoute => GoRouteData.$route(
  path: '/phone_linking',

  factory: $PhoneLinkingRouteExtension._fromState,
);

extension $PhoneLinkingRouteExtension on PhoneLinkingRoute {
  static PhoneLinkingRoute _fromState(GoRouterState state) =>
      const PhoneLinkingRoute();

  String get location => GoRouteData.$location('/phone_linking');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $phoneVerifyRoute => GoRouteData.$route(
  path: '/phone_verify',

  factory: $PhoneVerifyRouteExtension._fromState,
);

extension $PhoneVerifyRouteExtension on PhoneVerifyRoute {
  static PhoneVerifyRoute _fromState(GoRouterState state) =>
      const PhoneVerifyRoute();

  String get location => GoRouteData.$location('/phone_verify');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $authGateRoute => GoRouteData.$route(
  path: '/auth_gate',

  factory: $AuthGateRouteExtension._fromState,
);

extension $AuthGateRouteExtension on AuthGateRoute {
  static AuthGateRoute _fromState(GoRouterState state) => const AuthGateRoute();

  String get location => GoRouteData.$location('/auth_gate');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $rootShellRoute => StatefulShellRouteData.$route(
  factory: $RootShellRouteExtension._fromState,
  branches: [
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/home',

          factory: $HomeRouteExtension._fromState,
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/course',

          factory: $CourseRouteExtension._fromState,
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/message',

          factory: $MessageRouteExtension._fromState,
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/account',

          factory: $AccountRouteExtension._fromState,
        ),
      ],
    ),
  ],
);

extension $RootShellRouteExtension on RootShellRoute {
  static RootShellRoute _fromState(GoRouterState state) =>
      const RootShellRoute();
}

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location('/home');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CourseRouteExtension on CourseRoute {
  static CourseRoute _fromState(GoRouterState state) => const CourseRoute();

  String get location => GoRouteData.$location('/course');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MessageRouteExtension on MessageRoute {
  static MessageRoute _fromState(GoRouterState state) => const MessageRoute();

  String get location => GoRouteData.$location('/message');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AccountRouteExtension on AccountRoute {
  static AccountRoute _fromState(GoRouterState state) => const AccountRoute();

  String get location => GoRouteData.$location('/account');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
