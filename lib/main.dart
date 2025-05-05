import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:online_app/di/service_locator.dart';
import 'package:online_app/navigation/app_router.dart';
import 'package:online_app/navigation/cubit/navigation_cubit.dart';
import 'package:online_app/repositories/category_repository/category_repository.dart';
import 'package:online_app/repositories/course_item_repository/course_item_repository.dart';
import 'package:online_app/resources/app_theme.dart';
import 'package:online_app/screens/auth_screen/bloc/auth_bloc/auth_bloc.dart';
import 'package:online_app/screens/course_details_screen/bloc/course_details_bloc.dart';
import 'package:online_app/screens/course_screen/bloc/course_screen_bloc.dart';
import 'package:online_app/screens/home_screen/bloc/home_screen_bloc/home_screen_bloc.dart';
import 'package:online_app/screens/payment_screen/bloc/payment_bloc/payment_bloc.dart';
import 'package:online_app/screens/search_screen/search_screen_bloc/search_screen_bloc.dart';

import 'bloc/filters_bloc/filters_bloc.dart';

void main() async {
  await dotenv.load(fileName: "lib/api_keys.env");
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(
    MultiBlocProvider(
      providers: [
        RepositoryProvider(
          create: (_) => CategoryRepository(),
        ),
        RepositoryProvider(
          create: (_) => CourseItemRepository(),
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
          ),
        ),
        BlocProvider(
          create: (_) => CourseDetailsBloc(),
        ),
        BlocProvider(
          create: (context) => FiltersBloc(
            categoryRepository: context.read<CategoryRepository>(),
          ),),
         BlocProvider(
          create: (_) => PaymentBloc(),
        ),
        BlocProvider(
          create: (_) => FiltersBloc(),

        ),
        BlocProvider(
          create: (context) => SearchScreenBloc(
            courseItemRepository: context.read<CourseItemRepository>(),
          ),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      builder: BotToastInit(),
      title: 'Flutter Demo',
      theme: GlobalTheme.lightTheme,
      darkTheme: GlobalTheme.darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: AppRouter().createRouter(),
    );
  }
}
