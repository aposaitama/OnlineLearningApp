import 'dart:async';

import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/screens/course_details_screen/bloc/course_details_bloc.dart';
import 'package:online_app/screens/course_details_screen/bloc/course_details_event.dart';
import 'package:online_app/screens/home_screen/bloc/home_screen_bloc/home_screen_bloc.dart';
import 'package:online_app/screens/home_screen/bloc/home_screen_bloc/home_screen_bloc_event.dart';
import 'package:online_app/utils/extensions.dart';
import 'package:video_player/video_player.dart';

class CustomOverlayControls extends StatefulWidget {
  const CustomOverlayControls({super.key});

  @override
  State<CustomOverlayControls> createState() => _CustomOverlayControlsState();
}

class _CustomOverlayControlsState extends State<CustomOverlayControls> {
  bool _showControls = true;
  Timer? _hideTimer;

  @override
  void initState() {
    super.initState();
    _startHideTimer();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final controller = ChewieController.of(context);
      final videoController = controller.videoPlayerController;
      controller.videoPlayerController.addListener(
        () {
          if (mounted && _showControls) {
            setState(() {});
          }
          final isEnded = videoController.value.position >=
                  videoController.value.duration &&
              !videoController.value.isPlaying;
          if (isEnded) {
            context.read<CourseDetailsBloc>().add(
                  const FinishedVideoEvent(),
                );
            context.read<HomeScreenBloc>().add(
                  const LoadUserHomeScreenBlocEvent(),
                );
          }
        },
      );
    });
  }

  void _startHideTimer() {
    _hideTimer?.cancel();
    _hideTimer = Timer(const Duration(seconds: 3), () {
      setState(() {
        _showControls = false;
      });
    });
  }

  void _onUserInteraction() {
    setState(() {
      _showControls = true;
    });
    _startHideTimer();
  }

  @override
  void dispose() {
    _hideTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ChewieController.of(context);
    final videoController = controller.videoPlayerController;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: _onUserInteraction,
      child: Stack(
        alignment: Alignment.center,
        children: [
          if (_showControls)
            Positioned.fill(
              child: Container(
                color: Colors.black38,
              ),
            ),
          if (_showControls)
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 40.0,
                  // left: 20.0,
                ),
                child: IconButton(
                  onPressed: () => context.read<CourseDetailsBloc>().add(
                        const CloseVideoEvent(),
                      ),
                  icon: SvgPicture.asset(
                    'assets/icons/ArrowBack.svg',
                    colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          if (_showControls)
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 40.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () =>
                              context.read<CourseDetailsBloc>().add(
                                    const FullScreenEvent(),
                                  ),
                          icon: SvgPicture.asset(
                            'assets/icons/FullScreen.svg',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    VideoProgressIndicator(
                      videoController,
                      allowScrubbing: true,
                      colors: const VideoProgressColors(
                        playedColor: Colors.red,
                        backgroundColor: Colors.grey,
                        bufferedColor: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 7.5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          videoController.value.position.durationToString(),
                          style: AppFonts.poppinsRegular.copyWith(
                            fontSize: 12.0,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          videoController.value.duration.durationToString(),
                          style: AppFonts.poppinsRegular.copyWith(
                            fontSize: 12.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          if (_showControls)
            Align(
              alignment: Alignment.center,
              child: IconButton(
                iconSize: 48,
                icon: videoController.value.isPlaying
                    ? Container(
                        width: 56.0,
                        height: 56.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withValues(
                            alpha: 0.5,
                          ),
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            fit: BoxFit.scaleDown,
                            'assets/icons/Pause.svg',
                          ),
                        ),
                      )
                    : Container(
                        width: 56.0,
                        height: 56.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withValues(
                            alpha: 0.5,
                          ),
                        ),
                        child: SvgPicture.asset(
                          fit: BoxFit.scaleDown,
                          'assets/icons/PolygonBig.svg',
                        ),
                      ),
                color: Colors.white,
                onPressed: () {
                  if (videoController.value.isPlaying) {
                    videoController.pause();
                    setState(
                      () {},
                    );
                  } else {
                    videoController.play();
                    setState(
                      () {},
                    );
                  }
                },
              ),
            ),
        ],
      ),
    );
  }
}
