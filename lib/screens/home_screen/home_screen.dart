import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 85.0,
        backgroundColor: AppColors.deepBlueColor,
        centerTitle: false,
        title: RichText(
          textAlign: TextAlign.left,
          text: TextSpan(
            text: 'Hi, Kristin \n',
            style: AppFonts.poppinsBold.copyWith(
              color: Colors.white,
              fontSize: 24.0,
              height: 2.0,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'Let’s start learning',
                style: AppFonts.poppinsRegular.copyWith(
                  color: Colors.white,
                  fontSize: 14.0,
                ),
              ),
            ],
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
        child: Text('Home'),
      ),
    );
  }
}
