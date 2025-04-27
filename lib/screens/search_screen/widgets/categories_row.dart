import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_app/utils/constants.dart';

import '../../../bloc/filters_bloc/filters_bloc.dart';
import '../../../bloc/filters_bloc/filters_state.dart';
import '../../../resources/app_colors.dart';
import '../../../resources/app_colors_model.dart';
import '../../../resources/app_fonts.dart';

class CategoriesRow extends StatelessWidget {
  final Function(String) selectCategory;

  const CategoriesRow({
    super.key,
    required this.selectCategory,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FiltersBloc, FiltersState>(
      builder: (context, state) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...filterCategories.map(
                (category) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6.0),
                  child: GestureDetector(
                    onTap: () => selectCategory(category),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: state.selectedCategories.contains(category)
                            ? AppColors.deepBlueColor
                            : AppColors.lightGreyColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 6.0,
                        ),
                        child: Text(
                          category,
                          style: AppFonts.poppinsMedium.copyWith(
                            color: state.selectedCategories.contains(category)
                                ? Theme.of(context)
                                    .extension<AppColorsModel>()!
                                    .white
                                : Theme.of(context)
                                    .extension<AppColorsModel>()!
                                    .hintTextColor,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
