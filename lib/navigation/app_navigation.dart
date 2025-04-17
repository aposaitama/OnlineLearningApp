// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:online_app/screens/account_screen/account_screen.dart';
// import 'package:online_app/screens/auth_screen/login_screen/login_screen.dart';
// import 'package:online_app/screens/auth_screen/register_screen/phone_linking_screen/phone_linking_screen.dart';
// import 'package:online_app/screens/auth_screen/register_screen/register_screen.dart';
// import 'package:online_app/screens/auth_screen/register_screen/verify_phone_screen/verify_phone_screen.dart';
// import 'package:online_app/screens/course_screen/course_screen.dart';
// import 'package:online_app/screens/home_screen/home_screen.dart';
// import 'package:online_app/screens/message_screen/message_screen.dart';
// import 'package:online_app/screens/root_screen/root_screen.dart';

// class AppRouter {
//   GoRouter createRouter(BuildContext context) {
//     return GoRouter(
//       initialLocation: '/register',
//       routes: <RouteBase>[
//         StatefulShellRoute.indexedStack(
//           builder: (context, state, navigationShell) => RootScreen(
//             navigationShell: navigationShell,
//           ),
//           branches: [
//             StatefulShellBranch(
//               routes: [
//                 GoRoute(
//                   path: '/home',
//                   builder: (context, state) {
//                     return const HomeScreen();
//                   },
//                 ),
//               ],
//             ),
//             StatefulShellBranch(
//               routes: [
//                 GoRoute(
//                   path: '/course',
//                   builder: (context, state) {
//                     return const CourseScreen();
//                   },
//                 ),
//               ],
//             ),
//             StatefulShellBranch(
//               routes: [
//                 GoRoute(
//                   path: '/message',
//                   builder: (context, state) {
//                     return const MessageScreen();
//                   },
//                 ),
//               ],
//             ),
//             StatefulShellBranch(
//               routes: [
//                 GoRoute(
//                   path: '/account',
//                   builder: (context, state) => const AccountScreen(),
//                   // routes: [
//                   //   GoRoute(
//                   //     path: 'edit',
//                   //     builder: (context, state) =>
//                   //         EditProfileScreen(scaffoldKey: scaffoldKey),
//                   //   ),
//                   // ],
//                 ),
//               ],
//             ),
//           ],
//         ),

//         GoRoute(
//           path: '/login',
//           builder: (context, state) => const LoginScreen(),
//         ),
//         GoRoute(
//           path: '/register',
//           builder: (context, state) => const RegisterScreen(),
//         ),
//         GoRoute(
//           path: '/phone_linking',
//           builder: (context, state) => const PhoneLinkingScreen(),
//         ),
//         GoRoute(
//           path: '/phone_verify',
//           builder: (context, state) => const VerifyPhoneScreen(),
//         ),

//         // GoRoute(
//         //   path: '/register_code',
//         //   builder: (context, state) => const RegisterScreenEnterCode(),
//         // ),
//         // GoRoute(
//         //   path: '/register_welcome',
//         //   builder: (context, state) => const RegisterScreenWelcome(),
//         // ),
//       ],
//     );
//   }
// }
