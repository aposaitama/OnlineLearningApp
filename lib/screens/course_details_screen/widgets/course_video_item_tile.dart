import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/utils/index_to_string_extension.dart';
import 'package:online_app/utils/seconds_to_date_extension.dart';

class CourseVideoItemTile extends StatelessWidget {
  final int videoNumber;
  final String videoTitle;
  final int videoDuration;
  final String videoUrl;
  final void Function()? onPlayPressed;
  const CourseVideoItemTile({
    super.key,
    required this.videoNumber,
    required this.videoTitle,
    required this.videoUrl,
    required this.videoDuration,
    this.onPlayPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 26.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: 36.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      videoNumber.indexToString(),
                      style: AppFonts.poppinsMedium.copyWith(
                        color: Theme.of(context)
                            .extension<AppColorsModel>()!
                            .hintTextColor,
                        fontSize: 24.0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 32.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    videoTitle,
                    style: AppFonts.poppinsRegular.copyWith(
                      color: Theme.of(context)
                          .extension<AppColorsModel>()!
                          .mainTextColor,
                      fontSize: 14.0,
                    ),
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    '${videoDuration.toTimeFormat()} min',
                    style: AppFonts.poppinsMedium.copyWith(
                      color: Theme.of(context)
                          .extension<AppColorsModel>()!
                          .hintTextColor,
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
          GestureDetector(
            onTap: onPlayPressed,
            child: Container(
              height: 44.0,
              width: 44.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.deepBlueColor,
              ),
              child: Center(
                child: SvgPicture.asset(
                  'assets/icons/Polygon.svg',
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
