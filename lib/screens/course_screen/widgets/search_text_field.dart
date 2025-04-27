import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/widgets/search_modal_sheet/search_modal_sheet.dart';

class SearchTextField extends StatelessWidget {
  final void Function()? onEditingComplete;
  final void Function()? onPrefixPressed;
  final void Function(String)? onChanged;
  final TextEditingController searchFieldController;
  final VoidCallback onFiltersTap;

  const SearchTextField({
    super.key,
    this.onEditingComplete,
    this.onPrefixPressed,
    this.onChanged,
    required this.searchFieldController,
    required this.onFiltersTap,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return TextField(
      onEditingComplete: onEditingComplete,
      controller: searchFieldController,
      cursorColor: Colors.transparent,
      decoration: InputDecoration(
          prefixIcon: IconButton(
            onPressed: onPrefixPressed,
            icon: Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
              ),
              child: SvgPicture.asset(
                'assets/icons/Search.svg',
                fit: BoxFit.scaleDown,
                colorFilter: const ColorFilter.mode(
                  AppColors.lavanderGrayColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(
              right: 25.0,
            ),
            child: GestureDetector(
              onTap: onFiltersTap,

              child: SvgPicture.asset(
                fit: BoxFit.scaleDown,
                'assets/icons/Filter.svg',
                colorFilter: const ColorFilter.mode(
                  AppColors.lavanderGrayColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
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
              : Theme.of(context)
                  .extension<AppColorsModel>()
                  ?.bottomSearchButton,
          hintText: 'Find Course',
          hintStyle: AppFonts.poppinsRegular.copyWith(
            color: AppColors.lavanderGrayColor,
            fontSize: 14.0,
          )),
      onChanged: onChanged,
    );
  }
}
