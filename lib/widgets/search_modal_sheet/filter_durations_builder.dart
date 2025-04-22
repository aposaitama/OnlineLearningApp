import 'package:flutter/material.dart';
import 'package:online_app/utils/constants.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_colors_model.dart';
import '../../resources/app_fonts.dart';

class FilterDurationsBuilder extends StatelessWidget {
  const FilterDurationsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12.0,
      runSpacing: 12.0,
      children: filterDurations.map(
            (duration) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: AppColors.lightGreyColor,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 6.0,
              ),
              child: Text(
                '${duration.start.toInt()}-${duration.end.toInt()} Hours',
                style: AppFonts.poppinsMedium.copyWith(
                  color: Theme.of(context).extension<AppColorsModel>()!.hintTextColor,
                  fontSize: 12.0,
                ),
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
