import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_app/gen/assets.gen.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/screens/search_screen/search_screen_bloc/search_screen_bloc.dart';
import 'package:online_app/screens/search_screen/search_screen_bloc/search_screen_event.dart';

class SearchTextField extends StatelessWidget {
  final void Function()? onEditingComplete;
  final void Function()? onPrefixPressed;
  final void Function(String)? onChanged;
  final TextEditingController? searchFieldController;
  final VoidCallback onTapFilters;
  final void Function(String)? onSubmitted;

  const SearchTextField({
    super.key,
    this.onEditingComplete,
    this.onPrefixPressed,
    this.onChanged,
    this.searchFieldController,
    required this.onTapFilters,
    this.onSubmitted,
  });

  void _clearTextField(BuildContext context) {
    context.read<SearchScreenBloc>().add(
          const EnterSearchTextEvent(
            enteredText: null,
          ),
        );

    searchFieldController?.text = '';
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return TextField(
      onEditingComplete: onEditingComplete,
      controller: searchFieldController,
      cursorColor: AppColors.grayProgressColor,
      decoration: InputDecoration(
        prefixIcon: IconButton(
          onPressed: onPrefixPressed,
          icon: Padding(
            padding: const EdgeInsets.only(
              left: 10.0,
            ),
            child: SvgPicture.asset(
              Assets.icons.search,
              fit: BoxFit.scaleDown,
              colorFilter: const ColorFilter.mode(
                AppColors.lavanderGrayColor,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        suffixIcon: IntrinsicWidth(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (searchFieldController != null &&
                  searchFieldController!.text.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    onTap: () => _clearTextField(context),
                    child: SvgPicture.asset(
                      Assets.icons.clearText,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(right: 25.0),
                child: GestureDetector(
                  onTap: onTapFilters,
                  child: SvgPicture.asset(
                    fit: BoxFit.scaleDown,
                    Assets.icons.filter,
                    colorFilter: const ColorFilter.mode(
                      AppColors.lavanderGrayColor,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ],
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
            : Theme.of(context).extension<AppColorsModel>()?.bottomSearchButton,
        hintText: 'Find Course',
        hintStyle: AppFonts.poppinsRegular.copyWith(
          color: AppColors.lavanderGrayColor,
          fontSize: 14.0,
        ),
      ),
      onChanged: onChanged,
      onSubmitted: onSubmitted,
    );
  }
}
