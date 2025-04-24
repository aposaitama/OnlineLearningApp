import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_fonts.dart';

class MeetupWidget extends StatelessWidget {
  const MeetupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      decoration: BoxDecoration(
        color: AppColors.lightPurpleColor,
        borderRadius: BorderRadius.circular(
          15.0,
        ),
        border: Border.all(
          color: AppColors.lightPurpleColor,
          width: 0.5,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.darkHintTextColor.withValues(
              alpha: 0.1,
            ),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(
              2,
              5,
            ),
          ),
        ],
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
                  ),
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
          ),
        ],
      ),
    );
  }
}
