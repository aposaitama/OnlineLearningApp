import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/screens/course_screen/widgets/concrete_course_item_tile.dart';
import 'package:online_app/screens/course_screen/widgets/search_text_field.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  final categories = ['All', 'Popular', 'New'];
  String selectedCategory = 'All';
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 85.0,
        backgroundColor:
            Theme.of(context).extension<AppColorsModel>()!.darkColor,
        centerTitle: false,
        title: Text(
          'Course',
          style: AppFonts.poppinsBold.copyWith(
            color: Theme.of(context).extension<AppColorsModel>()!.mainTextColor,
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
                searchFieldController: searchController,
              ),
            ),
            const SizedBox(
              height: 35.0,
            ),
            SizedBox(
              height: 85.0,
              child: ListView.builder(
                padding: const EdgeInsets.only(
                  left: 20.0,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      right: 10.0,
                    ),
                    child: Container(
                      height: 77.0,
                      width: 160.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          13.0,
                        ),
                        color: AppColors.lightBlueColor,
                      ),
                    ),
                  );
                },
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
            SizedBox(
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
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const ConcreteCourseItemTile(
                    concreteCourseTitle: 'Product Design v1.0',
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
