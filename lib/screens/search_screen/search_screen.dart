import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/bloc/filters_bloc/filters_event.dart';
import 'package:online_app/bloc/filters_bloc/filters_state.dart';
import 'package:online_app/gen/assets.gen.dart';
import 'package:online_app/screens/course_screen/widgets/search_text_field.dart';
import 'package:online_app/screens/search_screen/search_screen_bloc/search_screen_bloc.dart';
import 'package:online_app/screens/search_screen/search_screen_bloc/search_screen_event.dart';
import 'package:online_app/screens/search_screen/widgets/categories_row.dart';
import 'package:online_app/screens/search_screen/widgets/searched_courses_builder.dart';

import '../../bloc/filters_bloc/filters_bloc.dart';
import '../../resources/app_colors_model.dart';
import '../../widgets/search_modal_sheet/search_modal_sheet.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  SearchScreenBloc get _searchScreenBloc => context.read<SearchScreenBloc>();

  @override
  void initState() {
    super.initState();
    _getSearchedCourses();
  }

  void _getSearchedCourses() {
    final filterState = context.read<FiltersBloc>().state;
    _searchScreenBloc.add(
      GetSearchedCoursesEvent(
        categories: filterState.selectedCategories,
        durations: filterState.selectedDurations,
        priceRange: filterState.priceRange,
      ),
    );
  }

  void _showFilterBottomSheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (bottomSheetContext) {
        return SearchModalSheet(
          applyFilters: () {
            _getSearchedCourses();
            bottomSheetContext.pop();
          },
        );
      },
    );
  }

  void _selectCategory(String category) {
    context.read<FiltersBloc>().add(
          SelectCategoriesEvent(
            category: category,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<FiltersBloc, FiltersState>(
      listenWhen: (previous, current) {
        return previous.selectedCategories != current.selectedCategories;
      },
      listener: (context, state) {
        _getSearchedCourses();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () => context.pop(),
            child: SvgPicture.asset(
              Assets.icons.arrowBack,
              fit: BoxFit.scaleDown,
              colorFilter: ColorFilter.mode(
                Theme.of(context).extension<AppColorsModel>()!.mainTextColor,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SearchTextField(
                onTapFilters: _showFilterBottomSheet,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 16.0,
                  bottom: 12.0,
                ),
                child: CategoriesRow(
                  selectCategory: (category) => _selectCategory(
                    category,
                  ),
                ),
              ),
              SearchedCoursesBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
