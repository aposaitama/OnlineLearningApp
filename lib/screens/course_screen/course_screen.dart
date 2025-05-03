import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/screens/course_screen/bloc/course_screen_bloc.dart';
import 'package:online_app/screens/course_screen/bloc/course_screen_event.dart';
import 'package:online_app/screens/course_screen/bloc/course_screen_state.dart';
import 'package:online_app/screens/course_screen/widgets/categories_builder.dart';
import 'package:online_app/screens/course_screen/widgets/concrete_course_item_tile.dart';
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

  @override
  void initState() {
    super.initState();
    _loadInitialData();
  }

  void _loadInitialData() {
    _courseScreenBloc.add(
      const LoadCourseBasicInfoEvent(),
    );

    // _courseScreenBloc.add(
    //   const GetCategoriesOnCoursesEvent(),
    // );
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

  void _selectCategory(int categoryId) {
    context.read<CourseScreenBloc>().add(
          SelectCategoryOnCoursesEvent(
            categoryId: categoryId,
          ),
        );
  }

  final categories = ['All', 'Popular', 'New'];
  String selectedCategory = 'All';

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
                  'assets/icons/UserImage.svg',
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
                  ),
                ),
                const SizedBox(
                  height: 35.0,
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
                    child: Wrap(
                      spacing: 17.0,
                      runSpacing: 20.0,
                      children: categories.map((category) {
                        return GestureDetector(
                          onTap: () {
                            setState(
                              () {
                                selectedCategory = category;
                              },
                            );
                          },
                          child: Container(
                            height: 28.0,
                            width: 73.0,
                            decoration: BoxDecoration(
                              color: category == selectedCategory
                                  ? AppColors.deepBlueColor
                                  : isDark
                                      ? AppColors.darkHintTextColor
                                      : Colors.white,
                              borderRadius: BorderRadius.circular(
                                13.0,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                category,
                                style: AppFonts.poppinsRegular.copyWith(
                                  color: category == selectedCategory
                                      ? Colors.white
                                      : Theme.of(
                                          context,
                                        )
                                          .extension<AppColorsModel>()
                                          ?.hintTextColor,
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
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
