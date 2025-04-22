import 'package:flutter/material.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_colors_model.dart';
import '../../resources/app_fonts.dart';
import '../../utils/constants.dart';

class FilterCategoriesBuilder extends StatelessWidget {
  const FilterCategoriesBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12.0,
      runSpacing: 12.0,
      //TODO is it ok or make two rows with 3 categories in them
      children: filterCategories.map(
            (category) {
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
                category,
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
