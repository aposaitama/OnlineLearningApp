import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_app/bloc/filters_bloc/filters_bloc.dart';
import 'package:online_app/bloc/filters_bloc/filters_state.dart';
import 'package:online_app/utils/constants.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_colors_model.dart';
import '../../resources/app_fonts.dart';

class FilterDurationsBuilder extends StatelessWidget {
  final Function(RangeValues) selectDuration;

  const FilterDurationsBuilder({
    super.key,
    required this.selectDuration,
  });

  @override
  Widget build(BuildContext context) {
    final appColorsModel = Theme.of(context).extension<AppColorsModel>()!;
    return BlocBuilder<FiltersBloc, FiltersState>(builder: (context, state) {
      return Wrap(
        spacing: 12.0,
        runSpacing: 12.0,
        children: filterDurations.map(
          (duration) {
            return GestureDetector(
              onTap: () => selectDuration(duration),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: state.selectedDurations.contains(duration)
                      ? AppColors.deepBlueColor
                      : AppColors.lightGreyColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 6.0,
                  ),
                  child: Text(
                    '${duration.start.toInt()}-${duration.end.toInt()} Hours',
                    style: AppFonts.poppinsMedium.copyWith(
                      color: state.selectedDurations.contains(duration)
                          ? appColorsModel.white
                          : appColorsModel.hintTextColor,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
            );
          },
        ).toList(),
      );
    });
  }
}
