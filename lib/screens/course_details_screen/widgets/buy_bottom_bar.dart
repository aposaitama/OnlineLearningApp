import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_app/gen/assets.gen.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/screens/course_details_screen/bloc/course_details_bloc.dart';
import 'package:online_app/screens/course_details_screen/bloc/course_details_event.dart';
import 'package:online_app/screens/course_details_screen/bloc/course_details_state.dart';
import 'package:online_app/screens/home_screen/bloc/home_screen_bloc/home_screen_bloc.dart';
import 'package:online_app/screens/home_screen/bloc/home_screen_bloc/home_screen_bloc_state.dart';
import 'package:online_app/widgets/custom_filled_button.dart';

class BuyBottomBar extends StatelessWidget {
  final void Function()? onBuyButtonPressed;
  final void Function()? onToggleFavourite;
  final String courseId;

  const BuyBottomBar({
    super.key,
    this.onBuyButtonPressed,
    this.onToggleFavourite,
    required this.courseId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenBloc, HomeScreenState>(
        builder: (context, homeScreenState) {
      return BlocBuilder<CourseDetailsBloc, CourseDetailsState>(
        builder: (context, state) {
          return Container(
            decoration: BoxDecoration(
              color: Theme.of(context).extension<AppColorsModel>()!.onSurface,
              boxShadow: [
                BoxShadow(
                  color: AppColors.darkHintTextColor.withValues(
                    alpha: 0.1,
                  ),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: const Offset(
                    -2,
                    -5,
                  ),
                ),
              ],
            ),
            height: 98.0,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 14.0,
                left: 20.0,
                right: 20.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 89.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        13.0,
                      ),
                      color: AppColors.pinkColor,
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: onToggleFavourite,
                        child: SvgPicture.asset(
                          state.isInFavourite
                              ? Assets.icons.favouriteFilled
                              : Assets.icons.star,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 14.0,
                  ),
                  Expanded(
                    child:
                        (homeScreenState.userInfo?.user_purchased_courses.any(
                                  (course) {
                                    return course.documentId == courseId;
                                  },
                                ) ??
                                false)
                            ? CustomFilledButton(
                                onTap: () {},
                                buttonTitle: 'Already bought',
                              )
                            : CustomFilledButton(
                                onTap: onBuyButtonPressed,
                                buttonTitle: 'Buy Now',
                              ),
                  )
                ],
              ),
            ),
          );
        },
      );
    });
  }
}
