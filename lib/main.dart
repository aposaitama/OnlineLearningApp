import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_app/navigation/app_navigation.dart';
import 'package:online_app/navigation/cubit/navigation_cubit.dart';
import 'package:online_app/resources/app_theme.dart';

void main() {
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (_) => NavigationCubit()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: GlobalTheme.lightTheme,
      darkTheme: GlobalTheme.darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: AppRouter().createRouter(
        context,
      ),
    );
  }
}
