import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_app/models/categories_model/categories_model.dart';
import 'package:online_app/screens/course_screen/bloc/course_screen_bloc.dart';
import 'package:online_app/screens/course_screen/bloc/course_screen_state.dart';
import 'package:online_app/screens/course_screen/widgets/categories_item_tile.dart';
import 'package:online_app/screens/course_screen/widgets/shimmer_categories_item_tile.dart';

class CategoriesBuilder extends StatelessWidget {
  final Function(CategoriesModel) selectCategory;

  const CategoriesBuilder({
    super.key,
    required this.selectCategory,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CourseScreenBloc, CourseScreenState>(
      builder: (context, state) {
        return SizedBox(
          height: 85.0,
          child: state.categoriesList.isNotEmpty
              ? ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: state.categoriesList.length,
                  itemBuilder: (context, index) {
                    final category = state.categoriesList[index];
                    return Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: GestureDetector(
                        onTap: () => selectCategory(category),
                        child: CategoriesItemTile(
                          backgroundColor: category.hexBackgroundColor,
                          textColor: category.hexTitleTextColor,
                          imageUrl: category.categoryImage.url,
                          categoryTitle: category.categoryTitle,
                          textBackgroundColor: category.hexTextBackgroundColor,
                        ),
                      ),
                    );
                  },
                )
              : ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: ShimmerCategoriesItemTile(),
                    );
                  },
                ),
        );
      },
    );
  }
}
