import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_app/screens/account_screen/account_bloc/account_bloc.dart';
import 'package:online_app/screens/account_screen/account_bloc/account_state.dart';

import '../../../resources/app_colors.dart';
import '../../../resources/app_colors_model.dart';
import '../../../resources/app_fonts.dart';

class EditAccountTextField extends StatelessWidget {
  final Function(String)? onChanged;
  final String initialValue;

  const EditAccountTextField({
    super.key,
    this.onChanged, required this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

        return TextFormField(
          initialValue: initialValue,
          // controller: searchFieldController,
          cursorColor: AppColors.grayProgressColor,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 16.0,
            ),

            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                style: BorderStyle.solid,
                color: Colors.transparent,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(13.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                style: BorderStyle.solid,
                color: Theme.of(context).colorScheme.onPrimary,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(13.0),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                6.0,
              ),
            ),
            filled: true,
            fillColor: isDark
                ? Theme.of(context).extension<AppColorsModel>()?.onSurface
                : Theme.of(context).extension<AppColorsModel>()?.bottomSearchButton,
            // hintText: 'New username',
            hintStyle: AppFonts.poppinsRegular.copyWith(
              color: AppColors.lavanderGrayColor,
              fontSize: 14.0,
            ),
          ),
          onChanged: onChanged,
        );

  }
}
