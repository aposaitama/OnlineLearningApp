import 'package:bot_toast/bot_toast.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:online_app/di/service_locator.dart';
import 'package:online_app/firebase_options.dart';
import 'package:online_app/navigation/app_router.dart';
import 'package:online_app/navigation/cubit/navigation_cubit.dart';
import 'package:online_app/repositories/category_repository/category_repository.dart';
import 'package:online_app/repositories/course_item_repository/course_item_repository.dart';
import 'package:online_app/repositories/user_repository/user_repository.dart';
import 'package:online_app/resources/app_theme.dart';
import 'package:online_app/screens/account_screen/account_bloc/account_bloc.dart';
import 'package:online_app/screens/auth_screen/bloc/auth_bloc/auth_bloc.dart';
import 'package:online_app/screens/course_details_screen/bloc/course_details_bloc.dart';
import 'package:online_app/screens/course_screen/bloc/course_screen_bloc.dart';
import 'package:online_app/screens/favourites_screen/favourites_bloc/favourites_bloc.dart';
import 'package:online_app/screens/home_screen/bloc/home_screen_bloc/home_screen_bloc.dart';
import 'package:online_app/screens/message_screen/message_screen_bloc/message_screen_bloc.dart';
import 'package:online_app/screens/payment_screen/bloc/payment_bloc/payment_bloc.dart';
import 'package:online_app/screens/search_screen/search_screen_bloc/search_screen_bloc.dart';
import 'package:online_app/services/connectivity_service/connectivity_service.dart';
import 'package:online_app/services/firebase_api_service/firebase_api_service.dart';
import 'package:online_app/services/local_notifications_service/local_notifications_service.dart';
import 'package:online_app/services/shared_preferences_service/shared_preferences_service.dart';
import 'package:online_app/widgets/notification_dialog.dart';

import 'bloc/filters_bloc/filters_bloc.dart';
import 'package:timezone/data/latest.dart' as tz;

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  await dotenv.load(fileName: "lib/api_keys.env");
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  tz.initializeTimeZones();
  await Firebase.initializeApp(
    name: 'LearningApp',
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseApiService(
    (message) {
      NotificationDialog.showNotificationDialog(
        navigatorKey.currentContext!,
        message,
      );
    },
  ).initNotif();

  await SharedPreferencesService().initializeNotificationsStatus();

  await LocalNotificationsService.localNotificationsInit();

  runApp(
    MultiBlocProvider(
      providers: [
        RepositoryProvider(
          create: (_) => CategoryRepository(),
        ),
        RepositoryProvider(
          create: (_) => CourseItemRepository(),
        ),
        RepositoryProvider(
          create: (_) => UserRepository(),
        ),
        BlocProvider(
          create: (_) => NavigationCubit(),
        ),
        BlocProvider(
          create: (_) => AuthBloc(),
        ),
        BlocProvider(
          create: (_) => HomeScreenBloc(),
        ),
        BlocProvider(
          create: (context) => CourseScreenBloc(
            categoryRepository: context.read<CategoryRepository>(),
            courseItemRepository: context.read<CourseItemRepository>(),
          ),
        ),
        BlocProvider(
          create: (_) => CourseDetailsBloc(),
        ),
        BlocProvider(
          create: (context) => FiltersBloc(
            categoryRepository: context.read<CategoryRepository>(),
          ),
        ),
        BlocProvider(
          create: (_) => PaymentBloc(),
        ),
        BlocProvider(
          create: (context) => SearchScreenBloc(
            courseItemRepository: context.read<CourseItemRepository>(),
          ),
        ),
        BlocProvider(
          create: (context) => AccountBloc(
            userRepository: context.read<UserRepository>(),
          ),
        ),
        BlocProvider(
          create: (context) => FavouritesBloc(),
        ),
        BlocProvider(
          create: (context) => MessageScreenBloc(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      builder: BotToastInit(),
      title: 'Flutter Demo',
      theme: GlobalTheme.lightTheme,
      darkTheme: GlobalTheme.darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: AppRouter(
        navigatorKey,
        locator<ConnectivityService>(),
      ).createRouter(),
    );
  }
}
