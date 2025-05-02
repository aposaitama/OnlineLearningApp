import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_app/screens/course_screen/bloc/course_screen_bloc.dart';
import 'package:online_app/screens/course_screen/bloc/course_screen_state.dart';
import 'package:online_app/screens/course_screen/widgets/categories_item_tile.dart';

class CategoriesBuilder extends StatelessWidget {
  const CategoriesBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CourseScreenBloc, CourseScreenState>(
      builder: (context, state) {
        return SizedBox(
          height: 85.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: state.categories.length,
            itemBuilder: (context, index) {
              final category = state.categories[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: CategoriesItemTile(
                  backgroundColor: category.hexBackgroundColor,
                  textColor: category.hexTitleTextColor,
                  imageUrl: category.categoryImage.url,
                  categoryTitle: category.categoryTitle,
                  textBackgroundColor: category.hexTextBackgroundColor,
                ),
              );
            },
          ),
        );
      },
    );
  }
}
