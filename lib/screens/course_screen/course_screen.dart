import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/bloc/filters_bloc/filters_bloc.dart';
import 'package:online_app/bloc/filters_bloc/filters_event.dart';
import 'package:online_app/gen/assets.gen.dart';
import 'package:online_app/models/categories_model/categories_model.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/screens/course_screen/bloc/course_screen_bloc.dart';
import 'package:online_app/screens/course_screen/bloc/course_screen_event.dart';
import 'package:online_app/screens/course_screen/bloc/course_screen_state.dart';
import 'package:online_app/screens/course_screen/widgets/categories_builder.dart';
import 'package:online_app/screens/course_screen/widgets/concrete_course_item_tile.dart';
import 'package:online_app/screens/course_screen/widgets/course_filters_row.dart';
import 'package:online_app/screens/course_screen/widgets/search_text_field.dart';
import '../../widgets/search_modal_sheet/search_modal_sheet.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  CourseScreenBloc get _courseScreenBloc => context.read<CourseScreenBloc>();
  final TextEditingController _courseScreenTextFieldController =
      TextEditingController();

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _loadInitialData();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.removeListener(_onScroll);
  }

  void _onScroll() {
    if (!_courseScreenBloc.state.hasReachedEnd) {
      if (_scrollController.position.pixels >
          _scrollController.position.maxScrollExtent - 200) {
        _courseScreenBloc.add(
          const LoadCourseBasicInfoEvent(refresh: false),
        );
      }
    }
  }

  void _loadInitialData() {
    _courseScreenBloc.add(
      const LoadCourseBasicInfoEvent(
        refresh: true,
      ),
    );
  }

  void _showFilterBottomSheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (bottomSheetContext) => SearchModalSheet(
        applyFilters: () {
          context.push('/search-screen');
        },
      ),
    );
  }

  void _onSubmitted(String value) {
    final searchBloc = context.read<CourseScreenBloc>();
    searchBloc.add(
      EnterTextOnCourseScreenEvent(
        enteredText: value,
      ),
    );

    searchBloc.add(
      const GetSearchedByTextCoursesEvent(),
    );
  }

  void _selectCategory(CategoriesModel category) async {
    // context.read<CourseScreenBloc>().add(
    //       SelectCategoryOnCoursesEvent(
    //         categoryId: categoryId,
    //       ),
    //     );

    context.read<FiltersBloc>().add(
          SelectCategoriesEvent(
            category: category,
          ),
        );

    context.push('/search-screen');
  }

  void _selectFilter(String filter) {
    _courseScreenBloc.add(
      SelectFilterOnCourseScreenEvent(
        filter: filter,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return BlocBuilder<CourseScreenBloc, CourseScreenState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            toolbarHeight: 85.0,
            backgroundColor:
                Theme.of(context).extension<AppColorsModel>()!.darkColor,
            centerTitle: false,
            title: Text(
              'Course',
              style: AppFonts.poppinsBold.copyWith(
                color: Theme.of(context)
                    .extension<AppColorsModel>()!
                    .mainTextColor,
                fontSize: 24.0,
                height: 2.0,
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 21.0,
                ),
                child: SvgPicture.asset(
                  Assets.icons.userImage,
                ),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 0.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: SearchTextField(
                    searchFieldController: _courseScreenTextFieldController,
                    onTapFilters: _showFilterBottomSheet,
                    onSubmitted: (value) => _onSubmitted(value),
                    updateCourses: _loadInitialData,
                    onChanged: (value) => _onSubmitted(value),
                  ),
                ),
                const SizedBox(
                  height: 27.0,
                ),
                CategoriesBuilder(
                  selectCategory: (categoryId) => _selectCategory(
                    categoryId,
                  ),
                ),
                const SizedBox(
                  height: 35.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: Text(
                    'Choice your course',
                    style: AppFonts.poppinsMedium.copyWith(
                      color: Theme.of(context)
                          .extension<AppColorsModel>()
                          ?.mainTextColor,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 13.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: SizedBox(
                    height: 28.0,
                    child: CourseFiltersRow(
                      selectFilter: (filter) => _selectFilter(filter),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    itemCount: state.courseList.length,
                    controller: _scrollController,
                    itemBuilder: (context, index) {
                      final concreteCourse = state.courseList[index];
                      return GestureDetector(
                        onTap: () => context.push(
                          '/course_details/${concreteCourse.documentId}',
                        ),
                        child: ConcreteCourseItemTile(
                          imageUrl: concreteCourse.courseImage.url,
                          concreteCourseTitle: concreteCourse.courseTitle,
                          concreteCourseAuthor: concreteCourse.courseAuthor,
                          concreteCoursePrice: concreteCourse.coursePrice,
                          concreteCourseDuration:
                              concreteCourse.totalCourseDurationInSeconds,
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
