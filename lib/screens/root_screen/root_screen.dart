import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/widgets/custom_bottom_nav_bar.dart';

class RootScreen extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const RootScreen({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavBar(),
      body: navigationShell,
    );
  }
}
