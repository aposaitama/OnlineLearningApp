import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:online_app/di/service_locator.dart';
import 'package:online_app/navigation/app_router.dart';
import 'package:online_app/navigation/cubit/navigation_cubit.dart';
import 'package:online_app/resources/app_theme.dart';
import 'package:online_app/screens/auth_screen/bloc/auth_bloc/auth_bloc.dart';

import 'navigation/cubit/navigation_cubit.dart';

void main() async {
  await dotenv.load(fileName: "lib/api_keys.env");
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => NavigationCubit()),
        BlocProvider(create: (_) => AuthBloc()),
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
