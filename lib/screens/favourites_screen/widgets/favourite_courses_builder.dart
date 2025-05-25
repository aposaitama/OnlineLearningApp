import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/gen/assets.gen.dart';
import 'package:online_app/screens/favourites_screen/favourites_bloc/favourites_bloc.dart';
import 'package:online_app/screens/favourites_screen/favourites_bloc/favourites_state.dart';
import 'package:online_app/screens/favourites_screen/widgets/favorite_item_tile.dart';

import '../../../resources/app_colors_model.dart';
import '../../../resources/app_fonts.dart';

class FavouriteCoursesBuilder extends StatelessWidget {
  const FavouriteCoursesBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouritesBloc, FavouritesState>(
      builder: (context, state) {
        if (state.favouriteCourses.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(Assets.icons.noProducts),
                const SizedBox(
                  height: 36.0,
                ),
                Text(
                  'No ptoducts',
                  style: AppFonts.poppinsMedium.copyWith(
                    color:
                    Theme.of(context).extension<AppColorsModel>()!.mainTextColor,
                    fontSize: 16.0,
                    height: 1.5,
                  ),
                ),
                SizedBox(
                  width: 170.0,
                  child: Text(
                    'You don`t have any products yet!',
                    style: AppFonts.poppinsRegular.copyWith(
                      color: Theme.of(context)
                          .extension<AppColorsModel>()
                          ?.hintTextColor,
                      fontSize: 12.0,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          );
        }
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
