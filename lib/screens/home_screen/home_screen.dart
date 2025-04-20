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
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Column(
          children: [
            Container(
              height: 120.0,
              decoration: BoxDecoration(
                color: AppColors.lightPurpleColor,
                borderRadius: BorderRadius.circular(
                  15.0,
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 25.0,
                        left: 22.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Meetup',
                            style: AppFonts.poppinsMedium.copyWith(
                              color: AppColors.darkPurpleColor,
                              fontSize: 24.0,
                            ),
                          ),
                          Text(
                            'Off-line exchange of learning experiences',
                            style: AppFonts.poppinsRegular.copyWith(
                              color: AppColors.darkPurpleColor,
                              fontSize: 12.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 13.0,
                    ),
                    child: SvgPicture.asset(
                      fit: BoxFit.scaleDown,
                      'assets/icons/Meetup_icon.svg',
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
