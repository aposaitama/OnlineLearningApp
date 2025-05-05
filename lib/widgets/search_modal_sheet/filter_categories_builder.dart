import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_app/models/categories_model/categories_model.dart';

import '../../bloc/filters_bloc/filters_bloc.dart';
import '../../bloc/filters_bloc/filters_state.dart';
import '../../resources/app_colors.dart';
import '../../resources/app_colors_model.dart';
import '../../resources/app_fonts.dart';

class FilterCategoriesBuilder extends StatelessWidget {
  final Function(CategoriesModel) selectCategory;

  const FilterCategoriesBuilder({
    super.key,
    required this.selectCategory,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FiltersBloc, FiltersState>(
      builder: (context, state) {
        return Wrap(
          spacing: 12.0,
          runSpacing: 12.0,
          children: state.categories.map(
            (category) {
              return GestureDetector(
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
                      category.categoryTitle,
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
              );
            },
          ).toList(),
        );
      },
    );
  }
}
