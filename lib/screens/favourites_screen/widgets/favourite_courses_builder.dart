import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/screens/favourites_screen/favourites_bloc/favourites_bloc.dart';
import 'package:online_app/screens/favourites_screen/favourites_bloc/favourites_state.dart';
import 'package:online_app/screens/favourites_screen/widgets/favorite_item_tile.dart';

class FavouriteCoursesBuilder extends StatelessWidget {
  const FavouriteCoursesBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouritesBloc, FavouritesState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: state.favouriteCourses.length,
          itemBuilder: (context, index) {
            final course = state.favouriteCourses[index];
            return GestureDetector(
              onTap: () => context.push(
                '/course_details/${course.documentId}',
              ),
              child: FavoriteItemTile(
                concreteCourseTitle: course.courseTitle,
                concreteCourseAuthor: course.courseAuthor,
                concreteCoursePrice: course.coursePrice,
                concreteCourseDuration: course.totalCourseDurationInSeconds,
                imageUrl: course.courseImage.url,
              ),
            );
          },
        );
      },
    );
  }
}
