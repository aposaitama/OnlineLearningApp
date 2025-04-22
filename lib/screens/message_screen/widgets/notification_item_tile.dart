import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';

class NotificationItemTile extends StatelessWidget {
  final String notificationDescription;
  final String date;

  const NotificationItemTile({
    super.key,
    required this.notificationDescription,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13.0),
        color: Theme.of(context).extension<AppColorsModel>()?.onSurface,
        boxShadow: [
          BoxShadow(
            color: AppColors.darkHintTextColor.withAlpha(25),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(2, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 48.0,
                height: 48.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13.0),
                  color: AppColors.deepBlueColor,
                ),
              ),
              const SizedBox(
                width: 12.0,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      notificationDescription,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppFonts.poppinsBold.copyWith(
                        color: Theme.of(context)
                            .extension<AppColorsModel>()!
                            .mainTextColor,
                        fontSize: 12.0,
                        height: 2.0,
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/DateTime.svg',
                        ),
                        const SizedBox(
                          width: 4.5,
                        ),
                        Text(
                          date,
                          style: AppFonts.poppinsRegular.copyWith(
                            color: Theme.of(context)
                                .extension<AppColorsModel>()
                                ?.hintTextColor,
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          // const SizedBox(height: 13.0),
          // Text(
          //   notificationDescription,
          //   overflow: TextOverflow.ellipsis,
          //   style: AppFonts.poppinsRegular.copyWith(
          //     color: !isDark ? AppColors.darkHintTextColor : Colors.white,
          //     fontSize: 12.0,
          //     height: 1.5,
          //   ),
          // ),
        ],
      ),
    );
  }
}
