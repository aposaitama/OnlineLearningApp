import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/screens/root_screen/root_screen.dart';
import 'package:online_app/screens/home_screen/home_screen.dart';
import 'package:online_app/screens/course_screen/course_screen.dart';
import 'package:online_app/screens/message_screen/message_screen.dart';
import 'package:online_app/screens/account_screen/account_screen.dart';
import 'package:online_app/screens/auth_screen/login_screen/login_screen.dart';
import 'package:online_app/screens/auth_screen/register_screen/register_screen.dart';
import 'package:online_app/screens/auth_screen/register_screen/phone_linking_screen/phone_linking_screen.dart';
import 'package:online_app/screens/auth_screen/register_screen/verify_phone_screen/verify_phone_screen.dart';

part 'routes.g.dart';

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
