// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $internetConnectivityRoute,
      $registerRoute,
      $loginRoute,
      $phoneLinkingRoute,
      $phoneVerifyRoute,
      $authGateRoute,
      $settingsPrivacyRoute,
      $helpRoute,
      $myCoursesScreenRoute,
      $favouriteScreenRoute,
      $searchScreenRoute,
      $editAccountRoute,
      $successfullPaymentScreenRoute,
      $paymentScreenRoute,
      $courseDetailsRoute,
      $rootShellRoute,
    ];

RouteBase get $internetConnectivityRoute => GoRouteData.$route(
      path: '/no_internet',
      factory: $InternetConnectivityRouteExtension._fromState,
    );

extension $InternetConnectivityRouteExtension on InternetConnectivityRoute {
  static InternetConnectivityRoute _fromState(GoRouterState state) =>
      const InternetConnectivityRoute();

  String get location => GoRouteData.$location(
        '/no_internet',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $registerRoute => GoRouteData.$route(
      path: '/register',
      factory: $RegisterRouteExtension._fromState,
    );

extension $RegisterRouteExtension on RegisterRoute {
  static RegisterRoute _fromState(GoRouterState state) => const RegisterRoute();

  String get location => GoRouteData.$location(
        '/register',
      );

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

  String get location => GoRouteData.$location(
        '/login',
      );

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

  String get location => GoRouteData.$location(
        '/phone_linking',
      );

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

  String get location => GoRouteData.$location(
        '/phone_verify',
      );

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

  String get location => GoRouteData.$location(
        '/auth_gate',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $settingsPrivacyRoute => GoRouteData.$route(
      path: '/settings-privacy',
      factory: $SettingsPrivacyRouteExtension._fromState,
    );

extension $SettingsPrivacyRouteExtension on SettingsPrivacyRoute {
  static SettingsPrivacyRoute _fromState(GoRouterState state) =>
      const SettingsPrivacyRoute();

  String get location => GoRouteData.$location(
        '/settings-privacy',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $helpRoute => GoRouteData.$route(
      path: '/help-screen',
      factory: $HelpRouteExtension._fromState,
    );

extension $HelpRouteExtension on HelpRoute {
  static HelpRoute _fromState(GoRouterState state) => const HelpRoute();

  String get location => GoRouteData.$location(
        '/help-screen',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $myCoursesScreenRoute => GoRouteData.$route(
      path: '/my_courses',
      factory: $MyCoursesScreenRouteExtension._fromState,
    );

extension $MyCoursesScreenRouteExtension on MyCoursesScreenRoute {
  static MyCoursesScreenRoute _fromState(GoRouterState state) =>
      const MyCoursesScreenRoute();

  String get location => GoRouteData.$location(
        '/my_courses',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $favouriteScreenRoute => GoRouteData.$route(
      path: '/favourites',
      factory: $FavouriteScreenRouteExtension._fromState,
    );

extension $FavouriteScreenRouteExtension on FavouriteScreenRoute {
  static FavouriteScreenRoute _fromState(GoRouterState state) =>
      const FavouriteScreenRoute();

  String get location => GoRouteData.$location(
        '/favourites',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $searchScreenRoute => GoRouteData.$route(
      path: '/search-screen',
      factory: $SearchScreenRouteExtension._fromState,
    );

extension $SearchScreenRouteExtension on SearchScreenRoute {
  static SearchScreenRoute _fromState(GoRouterState state) =>
      const SearchScreenRoute();

  String get location => GoRouteData.$location(
        '/search-screen',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $editAccountRoute => GoRouteData.$route(
      path: '/edit-account',
      factory: $EditAccountRouteExtension._fromState,
    );

extension $EditAccountRouteExtension on EditAccountRoute {
  static EditAccountRoute _fromState(GoRouterState state) =>
      const EditAccountRoute();

  String get location => GoRouteData.$location(
        '/edit-account',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $successfullPaymentScreenRoute => GoRouteData.$route(
      path: '/successfull_payment_screen',
      factory: $SuccessfullPaymentScreenRouteExtension._fromState,
    );

extension $SuccessfullPaymentScreenRouteExtension
    on SuccessfullPaymentScreenRoute {
  static SuccessfullPaymentScreenRoute _fromState(GoRouterState state) =>
      const SuccessfullPaymentScreenRoute();

  String get location => GoRouteData.$location(
        '/successfull_payment_screen',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $paymentScreenRoute => GoRouteData.$route(
      path: '/payment-screen/:courseId',
      factory: $PaymentScreenRouteExtension._fromState,
    );

extension $PaymentScreenRouteExtension on PaymentScreenRoute {
  static PaymentScreenRoute _fromState(GoRouterState state) =>
      PaymentScreenRoute(
        state.pathParameters['courseId']!,
      );

  String get location => GoRouteData.$location(
        '/payment-screen/${Uri.encodeComponent(courseId)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $courseDetailsRoute => GoRouteData.$route(
      path: '/course_details/:courseId',
      factory: $CourseDetailsRouteExtension._fromState,
    );

extension $CourseDetailsRouteExtension on CourseDetailsRoute {
  static CourseDetailsRoute _fromState(GoRouterState state) =>
      CourseDetailsRoute(
        state.pathParameters['courseId']!,
      );

  String get location => GoRouteData.$location(
        '/course_details/${Uri.encodeComponent(courseId)}',
      );

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

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CourseRouteExtension on CourseRoute {
  static CourseRoute _fromState(GoRouterState state) => const CourseRoute();

  String get location => GoRouteData.$location(
        '/course',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MessageRouteExtension on MessageRoute {
  static MessageRoute _fromState(GoRouterState state) => const MessageRoute();

  String get location => GoRouteData.$location(
        '/message',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AccountRouteExtension on AccountRoute {
  static AccountRoute _fromState(GoRouterState state) => const AccountRoute();

  String get location => GoRouteData.$location(
        '/account',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
