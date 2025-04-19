import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 85.0,
        backgroundColor:
            Theme.of(context).extension<AppColorsModel>()!.darkColor,
        centerTitle: false,
        title: Text(
          'Course',
          style: AppFonts.poppinsBold.copyWith(
            color: Theme.of(context).extension<AppColorsModel>()!.mainTextColor,
            fontSize: 24.0,
            height: 2.0,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 21.0,
            ),
            child: SvgPicture.asset(
              'assets/icons/UserImage.svg',
            ),
          ),
        ],
      ),
      body: Center(
        child: Text('Course'),
      ),
    );
  }
}
