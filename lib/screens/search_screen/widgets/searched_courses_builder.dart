import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/bloc/filters_bloc/filters_bloc.dart';
import 'package:online_app/screens/course_screen/widgets/concrete_course_item_tile.dart';
import 'package:online_app/screens/search_screen/search_screen_bloc/search_screen_bloc.dart';
import 'package:online_app/screens/search_screen/search_screen_bloc/search_screen_event.dart';
import 'package:online_app/screens/search_screen/search_screen_bloc/search_screen_state.dart';

import '../../../resources/app_colors_model.dart';
import '../../../resources/app_fonts.dart';

class SearchedCoursesBuilder extends StatefulWidget {
  const SearchedCoursesBuilder({super.key});

  @override
  State<SearchedCoursesBuilder> createState() => _SearchedCoursesBuilderState();
}

class _SearchedCoursesBuilderState extends State<SearchedCoursesBuilder> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.removeListener(_onScroll);
  }

  void _onScroll() {
    if (!context.read<SearchScreenBloc>().state.hasReachedEnd) {
      final filtersState = context.read<FiltersBloc>().state;
      if (_scrollController.position.pixels >
          _scrollController.position.maxScrollExtent - 200) {
        context.read<SearchScreenBloc>().add(
              LoadNextSearchedCourses(
                categories: filtersState.selectedCategories,
                durations: filtersState.selectedDurations,
                priceRange: filtersState.priceRange,
              ),
            );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchScreenBloc, SearchScreenState>(
      builder: (context, state) {
        if (state.coursesListStatus == SearchListStatus.initial) {
          return Expanded(
            child: Center(
              child: Text(
                'There is no results for your request :(',
                style: AppFonts.poppinsMedium.copyWith(
                  color: Theme.of(context)
                      .extension<AppColorsModel>()
                      ?.mainTextColor,
                  fontSize: 14.0,
                ),
              ),
            ),
          );
        } else if (state.coursesListStatus == SearchListStatus.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.coursesListStatus == SearchListStatus.successful) {
          return Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: state.coursesList.length,
              itemBuilder: (context, index) {
                final course = state.coursesList[index];
                return GestureDetector(
                  onTap: () => context.push(
                    '/course_details/${course.documentId}',
                  ),
                  child: ConcreteCourseItemTile(
                    concreteCourseTitle: course.courseTitle,
                    concreteCourseAuthor: course.courseAuthor,
                    concreteCoursePrice: course.coursePrice,
                    concreteCourseDuration: course.totalCourseDurationInSeconds,
                    imageUrl: course.courseImage.url,
                  ),
                );
              },
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
