import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/screens/favourites_screen/favourites_bloc/favourites_bloc.dart';
import 'package:online_app/screens/favourites_screen/favourites_bloc/favourites_event.dart';
import 'package:online_app/screens/favourites_screen/widgets/favourite_courses_builder.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_colors_model.dart';
import '../../resources/app_fonts.dart';

class FavouritesScreen extends StatefulWidget {
  const FavouritesScreen({super.key});

  @override
  State<FavouritesScreen> createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  FavouritesBloc get _favouritesBloc => context.read<FavouritesBloc>();

  @override
  void initState() {
    super.initState();
    _favouritesBloc.add(
      const GetFavouritesCoursesEvent(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
        shape: Border(
          bottom: BorderSide(
            color: isDark ? AppColors.darkColor : Colors.white,
          ),
        ),
        toolbarHeight: 85.0,
        backgroundColor:
            Theme.of(context).extension<AppColorsModel>()!.darkColor,
        centerTitle: false,
        title: Text(
          'Favourites',
          style: AppFonts.poppinsBold.copyWith(
            color:
                Theme.of(context).extension<AppColorsModel>()!.mainTextColor,
            fontSize: 24.0,
            height: 2.0,
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: FavouriteCoursesBuilder(),
      ),
    );
  }
}
