import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/services/connectivity_service/connectivity_service.dart';

import 'routes.dart';

class AppRouter {
  final ConnectivityService connectivityService;
  final GlobalKey<NavigatorState> navigatorKey;
  AppRouter(this.navigatorKey, this.connectivityService);
  GoRouter createRouter() => GoRouter(
        navigatorKey: navigatorKey,
        // initialLocation: '/payment-screen/ql29i9oegaoitpfkjew3e5yt',
        // initialLocation: '/course_details/wq23eaa3b17lf6cn43lr7i0j',

        initialLocation: '/auth_gate',
        refreshListenable: connectivityService,
        redirect: (context, state) {
          final hasInternet = connectivityService.hasInternet;

          final goingToNoInternet = state.uri.toString() == '/no_internet';

          if (!hasInternet && !goingToNoInternet) {
            return '/no_internet';
          }

          if (hasInternet && goingToNoInternet) {
            return '/auth_gate';
          }

          return null;
        },
        routes: $appRoutes,
      );
}
