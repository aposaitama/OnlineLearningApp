import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'routes.dart';

class AppRouter {
  final GlobalKey<NavigatorState> navigatorKey;
  AppRouter(this.navigatorKey);
  GoRouter createRouter() => GoRouter(
        navigatorKey: navigatorKey,
        // initialLocation: '/payment-screen/wq23eaa3b17lf6cn43lr7i0j',
        // initialLocation: '/course_details/wq23eaa3b17lf6cn43lr7i0j',
        initialLocation: '/auth_gate',
        routes: $appRoutes,
      );
}
