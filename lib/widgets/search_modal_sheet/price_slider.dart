import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/filters_bloc/filters_bloc.dart';
import '../../bloc/filters_bloc/filters_state.dart';
import '../../resources/app_colors.dart';
import '../../resources/app_colors_model.dart';

class PriceSlider extends StatelessWidget {
  final Function(RangeValues) onChange;
  final RangeValues priceRange;

  const PriceSlider({
    super.key,
    required this.onChange, required this.priceRange,
  });

  @override
  Widget build(BuildContext context) {
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
              values: priceRange,
              min: 0,
              max: 400,
              activeColor: AppColors.deepBlueColor,
              inactiveColor:AppColors.darkHintTextColor,
              labels: RangeLabels(
                '\$${priceRange.start.toInt()}',
                '\$${priceRange.end.toInt()}',
              ),
              divisions: (priceRange.end.toInt() > 0
                  ? priceRange.end.toInt()
                  : 1),
              onChanged: onChange,
            ),
          ),
        );

  }
}
