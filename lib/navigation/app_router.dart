import 'package:go_router/go_router.dart';
import 'routes.dart';

class AppRouter {
  GoRouter createRouter() => GoRouter(
      // initialLocation: '/course_details/wq23eaa3b17lf6cn43lr7i0j',
      initialLocation: '/auth_gate',
      routes: $appRoutes);
}
