import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/screens/auth_screen/auth_gate_screen/auth_gate_screen.dart';
import 'package:online_app/screens/course_details_screen/course_details_screen.dart';
import 'package:online_app/screens/edit_account_screen/edit_account_screen.dart';
import 'package:online_app/screens/error_status_screen/no_nitif/no_notif.dart';
import 'package:online_app/screens/error_status_screen/no_products/error_no_products_status_screen.dart';
import 'package:online_app/screens/favourites_screen/favourites_screen.dart';
import 'package:online_app/screens/help_screen.dart';
import 'package:online_app/screens/my_courses_screen/my_courses_screen.dart';
import 'package:online_app/screens/onboarding_screens/onboarding_screen.dart';
import 'package:online_app/screens/error_status_screen/no_internet/no_internet.dart';
import 'package:online_app/screens/payment_screen/payment_screen.dart';
import 'package:online_app/screens/payment_screen/successfull_payment_screen/successfull_payment_screen.dart';
import 'package:online_app/screens/root_screen/root_screen.dart';
import 'package:online_app/screens/home_screen/home_screen.dart';
import 'package:online_app/screens/course_screen/course_screen.dart';
import 'package:online_app/screens/message_screen/message_screen.dart';
import 'package:online_app/screens/account_screen/account_screen.dart';
import 'package:online_app/screens/auth_screen/login_screen/login_screen.dart';
import 'package:online_app/screens/auth_screen/register_screen/register_screen.dart';
import 'package:online_app/screens/auth_screen/register_screen/phone_linking_screen/phone_linking_screen.dart';
import 'package:online_app/screens/auth_screen/register_screen/verify_phone_screen/verify_phone_screen.dart';
import 'package:online_app/screens/search_screen/search_screen.dart';
import 'package:online_app/screens/settings_privacy_screen.dart';

part 'routes.g.dart';

@TypedGoRoute<InternetConnectivityRoute>(path: '/no_internet')
class InternetConnectivityRoute extends GoRouteData {
  const InternetConnectivityRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const NoInternetScreen();
}

@TypedGoRoute<NoNotifRoute>(path: '/no_notif')
class NoNotifRoute extends GoRouteData {
  const NoNotifRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const NoNotif();
}

@TypedGoRoute<NoProfuctsRoute>(path: '/no_products')
class NoProfuctsRoute extends GoRouteData {
  const NoProfuctsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ErrorNoProductsStatusScreen();
}

@TypedGoRoute<RegisterRoute>(path: '/register')
class RegisterRoute extends GoRouteData {
  const RegisterRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const RegisterScreen();
}

@TypedGoRoute<LoginRoute>(path: '/login')
class LoginRoute extends GoRouteData {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const LoginScreen();
}

@TypedGoRoute<PhoneLinkingRoute>(path: '/phone_linking')
class PhoneLinkingRoute extends GoRouteData {
  const PhoneLinkingRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const PhoneLinkingScreen();
}

@TypedGoRoute<PhoneVerifyRoute>(path: '/phone_verify')
class PhoneVerifyRoute extends GoRouteData {
  const PhoneVerifyRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const VerifyPhoneScreen();
}

@TypedGoRoute<AuthGateRoute>(path: '/auth_gate')
class AuthGateRoute extends GoRouteData {
  const AuthGateRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AuthGateScreen();
}

@TypedGoRoute<SettingsPrivacyRoute>(path: '/settings-privacy')
class SettingsPrivacyRoute extends GoRouteData {
  const SettingsPrivacyRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsPrivacyScreen();
}

@TypedGoRoute<HelpRoute>(path: '/help-screen')
class HelpRoute extends GoRouteData {
  const HelpRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HelpScreen();
}

@TypedGoRoute<MyCoursesScreenRoute>(path: '/my_courses')
class MyCoursesScreenRoute extends GoRouteData {
  const MyCoursesScreenRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const MyCoursesScreen();
}

@TypedGoRoute<FavouriteScreenRoute>(path: '/favourites')
class FavouriteScreenRoute extends GoRouteData {
  const FavouriteScreenRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const FavouritesScreen();
}

@TypedGoRoute<SearchScreenRoute>(path: '/search-screen')
class SearchScreenRoute extends GoRouteData {
  const SearchScreenRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SearchScreen();
}

@TypedGoRoute<EditAccountRoute>(path: '/edit-account')
class EditAccountRoute extends GoRouteData {
  const EditAccountRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const EditAccountScreen();
}

@TypedGoRoute<SuccessfullPaymentScreenRoute>(
    path: '/successfull_payment_screen')
class SuccessfullPaymentScreenRoute extends GoRouteData {
  const SuccessfullPaymentScreenRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SuccessfullPaymentScreen();
}

@TypedGoRoute<PaymentScreenRoute>(path: '/payment-screen/:courseId')
class PaymentScreenRoute extends GoRouteData {
  final String courseId;

  const PaymentScreenRoute(this.courseId);

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      PaymentScreen(courseId: courseId);
}

@TypedGoRoute<CourseDetailsRoute>(
  path: '/course_details/:courseId',
)
class CourseDetailsRoute extends GoRouteData {
  final String courseId;

  const CourseDetailsRoute(this.courseId);

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return CourseDetailsScreen(courseId: courseId);
  }
}

@TypedGoRoute<OnboardingScreenRoute>(
  path: '/onboarding-screen',
)
class OnboardingScreenRoute extends GoRouteData {
  const OnboardingScreenRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const OnboardingScreen();
  }
}

@TypedStatefulShellRoute<RootShellRoute>(
  branches: [
    TypedStatefulShellBranch(routes: [TypedGoRoute<HomeRoute>(path: '/home')]),
    TypedStatefulShellBranch(
      routes: [TypedGoRoute<CourseRoute>(path: '/course')],
    ),
    TypedStatefulShellBranch(
      routes: [TypedGoRoute<MessageRoute>(path: '/message')],
    ),
    TypedStatefulShellBranch(
      routes: [TypedGoRoute<AccountRoute>(path: '/account')],
    ),
  ],
)
class RootShellRoute extends StatefulShellRouteData {
  const RootShellRoute();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return RootScreen(navigationShell: navigationShell);
  }
}

class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeScreen();
}

class CourseRoute extends GoRouteData {
  const CourseRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const CourseScreen();
}

class MessageRoute extends GoRouteData {
  const MessageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const MessageScreen();
}

class AccountRoute extends GoRouteData {
  const AccountRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AccountScreen();
}
