import 'package:bot_toast/bot_toast.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/gen/assets.gen.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/screens/course_details_screen/bloc/course_details_bloc.dart';
import 'package:online_app/screens/course_details_screen/bloc/course_details_event.dart';
import 'package:online_app/screens/course_details_screen/bloc/course_details_state.dart';
import 'package:online_app/screens/course_details_screen/widgets/buy_bottom_bar.dart';
import 'package:online_app/screens/course_details_screen/widgets/course_info_widget.dart';
import 'package:online_app/screens/course_details_screen/widgets/course_videos_builder.dart';
import 'package:online_app/screens/course_details_screen/widgets/custom_overlays_controls.dart';
import 'package:online_app/screens/home_screen/bloc/home_screen_bloc/home_screen_bloc.dart';
import 'package:online_app/screens/home_screen/bloc/home_screen_bloc/home_screen_bloc_event.dart';
import 'package:online_app/screens/home_screen/bloc/home_screen_bloc/home_screen_bloc_state.dart';
import 'package:online_app/widgets/clocking_in_widget.dart';

class CourseDetailsScreen extends StatefulWidget {
  final String courseId;

  const CourseDetailsScreen({
    super.key,
    required this.courseId,
  });

  @override
  State<CourseDetailsScreen> createState() => _CourseDetailsScreenState();
}

class _CourseDetailsScreenState extends State<CourseDetailsScreen> {
  @override
  void initState() {
    context.read<HomeScreenBloc>().add(LoadUserHomeScreenBlocEvent());
    context.read<CourseDetailsBloc>().add(
          LoadConcreteCourseInfoEvent(
            widget.courseId,
          ),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double imageHeight = (MediaQuery.of(context).size.height / 3);
    final double height = MediaQuery.of(context).size.height;
    return BlocListener<CourseDetailsBloc, CourseDetailsState>(
      listener: (context, state) {
        if (state.videoWatchingStatus == CourseVideoStatus.finished) {
          ClockingInWidget.showUserStatDialog(context);
          context.read<HomeScreenBloc>().add(
                const LoadUserHomeScreenBlocEvent(),
              );
        }
      },
      child: BlocBuilder<CourseDetailsBloc, CourseDetailsState>(
        builder: (context, state) {
          if (state.loadingStatus == CourseDetailsLoadingStatus.loaded) {
            final course = state.course;
            return Scaffold(
              body: Stack(
                alignment: Alignment.topCenter,
                children: [
                  BlocBuilder<CourseDetailsBloc, CourseDetailsState>(
                    builder: (context, state) {
                      if (state.videoLoadingStatus ==
                          CourseLoadingVideoStatus.initial) {
                        return course != null
                            ? Stack(
                                children: [
                                  SizedBox(
                                    width: double.infinity,
                                    height: imageHeight,
                                    child: Image.network(
                                      fit: BoxFit.cover,
                                      'http://localhost:1337${course.courseImage.url}',
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        top: 35.0,
                                      ),
                                      child: IconButton(
                                        onPressed: () {
                                          context.pop();
                                        },
                                        icon: SvgPicture.asset(
                                          Assets.icons.arrowBack,
                                          colorFilter: const ColorFilter.mode(
                                            AppColors.darkColor,
                                            BlendMode.srcIn,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            : Container();
                      }
                      if (state.videoLoadingStatus ==
                          CourseLoadingVideoStatus.loaded) {
                        return state.courseVideo != null
                            ? BlocListener<CourseDetailsBloc,
                                CourseDetailsState>(
                                listener: (context, state) {
                                  if (state.isFullScreen !=
                                      context
                                          .read<CourseDetailsBloc>()
                                          .state
                                          .isFullScreen) {
                                    setState(
                                      () {},
                                    );
                                  }
                                },
                                //safearea
                                child: SafeArea(
                                  child: SizedBox(
                                    width: double.infinity,
                                    height: imageHeight - 22,
                                    child: Chewie(
                                      controller: ChewieController(
                                        fullScreenByDefault: state.isFullScreen,
                                        videoPlayerController:
                                            state.courseVideo!,
                                        customControls:
                                            const CustomOverlayControls(),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            : const SizedBox();
                      }
                      return Container();
                    },
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: imageHeight - 22,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context)
                                .extension<AppColorsModel>()!
                                .onSurface,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(
                                25.0,
                              ),
                              topRight: Radius.circular(
                                25.0,
                              ),
                            ),
                          ),
                          height: height - imageHeight + 22,
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 35.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CourseInfoWidget(
                                  courseTitle: course?.courseTitle ?? '',
                                  courseDescription:
                                      course?.courseDescription ?? '',
                                  coursePrice: course?.coursePrice ?? 0.0,
                                  courseDuration:
                                      course?.totalCourseDurationInSeconds ?? 0,
                                  courseVideoLength:
                                      course?.courseVideoItems.length ?? 0,
                                ),
                                SizedBox(
                                  height: 20.0,
                                  child: GestureDetector(
                                    onTap: () =>
                                        context.read<CourseDetailsBloc>().add(
                                              const TestFinishedVideo(),
                                            ),
                                    child: Container(
                                      color: Colors.amber,
                                      child: const Text('press'),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: CourseVideosBuilder(
                                    courseId: widget.courseId,
                                    videoList:
                                        state.course?.courseVideoItems ?? [],
                                    onLockPressed: (index) {
                                      BotToast.showText(
                                        text: 'You have to buy course',
                                      );
                                    },
                                    onPlayPressed: (index) async {
                                      context.read<CourseDetailsBloc>().add(
                                            LoadCourseVideoEvent(
                                              state
                                                      .course
                                                      ?.courseVideoItems[index]
                                                      .video
                                                      .url ??
                                                  '',
                                              state
                                                      .course
                                                      ?.courseVideoItems[index]
                                                      .id
                                                      .toString() ??
                                                  '',
                                            ),
                                          );
                                    },
                                  ),
                                ),
                                // GestureDetector(
                                //   onTap: () =>
                                //       context.read<CourseDetailsBloc>().add(
                                //             const PauseVideoEvent(),
                                //           ),
                                //   child: Container(
                                //     height: 50.0,
                                //     width: 50.0,
                                //     color: Colors.amber,
                                //   ),
                                // ),
                                //buy course bottom section
                                BlocBuilder<CourseDetailsBloc,
                                    CourseDetailsState>(
                                  builder: (context, state) {
                                    return BuyBottomBar(
                                      courseId: widget.courseId,
                                      onToggleFavourite: () => context
                                          .read<CourseDetailsBloc>()
                                          .add(
                                            ToogleFavouriteEvent(
                                                state.course?.id.toString() ??
                                                    ''),
                                          ),
                                      onBuyButtonPressed: () => context.push(
                                        '/payment-screen/${course?.id ?? 0}',
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}
