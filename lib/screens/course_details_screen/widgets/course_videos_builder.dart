import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_app/models/course_concrete_model.dart/course_concrete_model.dart';
import 'package:online_app/screens/course_details_screen/widgets/course_video_item_tile.dart';
import 'package:online_app/screens/home_screen/bloc/home_screen_bloc/home_screen_bloc.dart';
import 'package:online_app/screens/home_screen/bloc/home_screen_bloc/home_screen_bloc_state.dart';

class CourseVideosBuilder extends StatelessWidget {
  final String courseId;
  final void Function(int index)? onPlayPressed;
  final void Function(int index)? onLockPressed;
  final List<CourseVideoItem> videoList;
  const CourseVideosBuilder({
    super.key,
    required this.videoList,
    this.onPlayPressed,
    required this.courseId,
    this.onLockPressed,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenBloc, HomeScreenState>(
      builder: (context, state) {
        final userCompletedVideosList =
            state.userInfo?.completed_course_videos ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: ListView.builder(
            padding: const EdgeInsets.all(
              0.0,
            ),
            itemCount: videoList.length,
            itemBuilder: (context, index) {
              return CourseVideoItemTile(
                isCompleted: userCompletedVideosList.any(
                  (video) => video.id == videoList[index].id,
                ),
                videoModel: videoList[index],
                courseId: courseId,
                onLockPressed:
                    onLockPressed != null ? () => onLockPressed!(index) : null,
                onPlayPressed:
                    onPlayPressed != null ? () => onPlayPressed!(index) : null,
                videoNumber: index,
              );
            },
          ),
        );
      },
    );
  }
}
