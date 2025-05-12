import 'package:flutter/material.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';

class ClockingStatItemTile extends StatelessWidget {
  final String statTitle;
  final String statCount;
  final String statSystem;
  const ClockingStatItemTile({
    super.key,
    required this.statTitle,
    required this.statCount,
    required this.statSystem,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            statTitle,
            style: AppFonts.poppinsRegular.copyWith(
              height: 1.5,
              color:
                  Theme.of(context).extension<AppColorsModel>()?.hintTextColor,
              fontSize: 14.0,
            ),
          ),
          Row(
            children: [
              Text(
                statCount,
                style: AppFonts.poppinsMedium.copyWith(
                  color: Theme.of(context)
                      .extension<AppColorsModel>()
                      ?.mainTextColor,
                  height: 1.5,
                  fontSize: 20.0,
                ),
              ),
              Text(
                statSystem,
                style: AppFonts.poppinsRegular.copyWith(
                  color: Theme.of(context)
                      .extension<AppColorsModel>()
                      ?.hintTextColor,
                  fontSize: 14.0,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
