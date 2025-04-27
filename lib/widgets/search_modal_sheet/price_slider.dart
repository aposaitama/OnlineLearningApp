import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/filters_bloc/filters_bloc.dart';
import '../../bloc/filters_bloc/filters_state.dart';
import '../../resources/app_colors.dart';
import '../../resources/app_colors_model.dart';

class PriceSlider extends StatelessWidget {
  final Function(RangeValues) onChange;

  const PriceSlider({
    super.key,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FiltersBloc, FiltersState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(
            top: 12.0,
            bottom: 23.0,
          ),
          child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
              trackHeight: 1.0,
            ),
            child: RangeSlider(
              values: state.priceRange,
              min: 0,
              max: 400,
              activeColor: AppColors.deepBlueColor,
              inactiveColor:
                  Theme.of(context).extension<AppColorsModel>()!.hintTextColor,
              labels: RangeLabels(
                '\$${state.priceRange.start.toInt()}',
                '\$${state.priceRange.end.toInt()}',
              ),
              divisions: (state.priceRange.end.toInt() > 0
                  ? state.priceRange.end.toInt()
                  : 1),
              onChanged: onChange,
            ),
          ),
        );
      }
    );
  }
}
