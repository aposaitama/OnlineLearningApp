import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_app/models/course_concrete_model.dart/course_concrete_model.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/screens/course_details_screen/bloc/course_details_bloc.dart';
import 'package:online_app/screens/course_details_screen/bloc/course_details_state.dart';
import 'package:online_app/screens/course_details_screen/widgets/video_playable_button.dart';
import 'package:online_app/screens/home_screen/bloc/home_screen_bloc/home_screen_bloc.dart';
import 'package:online_app/screens/home_screen/bloc/home_screen_bloc/home_screen_bloc_state.dart';
import 'package:online_app/utils/extensions.dart';

class CourseVideoItemTile extends StatefulWidget {
  final CourseVideoItem videoModel;
  final String courseId;

  final int videoNumber;
  final void Function()? onPlayPressed;
  final void Function()? onLockPressed;
  const CourseVideoItemTile({
    super.key,
    required this.videoNumber,
    this.onPlayPressed,
    required this.courseId,
    this.onLockPressed,
    required this.videoModel,
  });

  @override
  State<CourseVideoItemTile> createState() => _CourseVideoItemTileState();
}

class _CourseVideoItemTileState extends State<CourseVideoItemTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 26.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: 36.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      widget.videoNumber.indexToString(),
                      style: AppFonts.poppinsMedium.copyWith(
                        color: Theme.of(context)
                            .extension<AppColorsModel>()!
                            .hintTextColor,
                        fontSize: 24.0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 32.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.videoModel.videoTitle,
                    style: AppFonts.poppinsRegular.copyWith(
                      color: Theme.of(context)
                          .extension<AppColorsModel>()!
                          .mainTextColor,
                      fontSize: 14.0,
                    ),
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    '${widget.videoModel.videoDurationInSeconds.toTimeFormat()} min',
                    style: AppFonts.poppinsMedium.copyWith(
                      color: Theme.of(context)
                          .extension<AppColorsModel>()!
                          .hintTextColor,
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
          BlocBuilder<HomeScreenBloc, HomeScreenState>(
            builder: (context, state) {
              if (state.userInfo?.user_purchased_courses.any(
                    (course) {
                      return course.documentId == widget.courseId;
                    },
                  ) ??
                  false) {
                //if course is purchased

                return BlocBuilder<CourseDetailsBloc, CourseDetailsState>(
                  builder: (context, state) {
                    return state.videoPlayingId ==
                            widget.videoModel.id.toString()
                        ? VideoPlayableButton(
                            imagePath: 'assets/icons/Pause.svg',
                            onPlayPressed: widget.onPlayPressed,
                          )
                        : VideoPlayableButton(
                            imagePath: 'assets/icons/Polygon.svg',
                            onPlayPressed: widget.onPlayPressed,
                          );
                  },
                );
              }
              //if course isnt purchesed
              return (widget.videoModel.videoAvailabilityStatus ==
                      VideoAvailabilityStatus.available)
                  ? GestureDetector(
                      onTap: widget.onPlayPressed,
                      child: Container(
                        height: 44.0,
                        width: 44.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.deepBlueColor,
                        ),
                        child:
                            BlocBuilder<CourseDetailsBloc, CourseDetailsState>(
                          builder: (context, state) {
                            return state.videoPlayingId ==
                                    widget.videoModel.id.toString()
                                ? VideoPlayableButton(
                                    imagePath: 'assets/icons/Pause.svg',
                                    onPlayPressed: widget.onPlayPressed,
                                  )
                                : VideoPlayableButton(
                                    imagePath: 'assets/icons/Polygon.svg',
                                    onPlayPressed: widget.onPlayPressed,
                                  );
                          },
                        ),
                      ),
                    )
                  : VideoPlayableButton(
                      isLocked: true,
                      imagePath: 'assets/icons/lock_icon.svg',
                      onPlayPressed: widget.onLockPressed,
                    );
            },
          ),
        ],
      ),
    );
  }
}
