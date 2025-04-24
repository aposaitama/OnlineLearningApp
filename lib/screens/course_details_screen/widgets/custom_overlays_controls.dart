import 'dart:async';

import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_app/screens/course_details_screen/bloc/course_details_bloc.dart';
import 'package:online_app/screens/course_details_screen/bloc/course_details_event.dart';
import 'package:video_player/video_player.dart';

// class CustomOverlayControls extends StatefulWidget {
//   const CustomOverlayControls({super.key});

//   @override
//   State<CustomOverlayControls> createState() => _CustomOverlayControlsState();
// }

// class _CustomOverlayControlsState extends State<CustomOverlayControls> {
//   bool _showControls = true;
//   Timer? _hideTimer;

//   @override
//   void initState() {
//     super.initState();

//     _startHideTimer(); // стартуємо таймер одразу
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       final controller = ChewieController.of(context);
//       controller.videoPlayerController.addListener(() {
//         if (mounted && _showControls) {
//           setState(() {});
//         }
//       });
//     });
//   }

//   void _startHideTimer() {
//     _hideTimer?.cancel();
//     _hideTimer = Timer(const Duration(seconds: 3), () {
//       setState(() {
//         _showControls = false;
//       });
//     });
//   }

//   void _onUserInteraction() {
//     setState(() {
//       _showControls = true;
//     });
//     _startHideTimer(); // перезапускаємо
//   }

//   @override
//   void dispose() {
//     _hideTimer?.cancel();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     print("Controls: $_showControls");
//     final controller = ChewieController.of(context);
//     final videoController = controller.videoPlayerController;

//     return GestureDetector(
//       behavior: HitTestBehavior.opaque,
//       onTap: _onUserInteraction,
//       child: Container(
//         color: _showControls ? Colors.black38 : Colors.transparent,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             //ProggressBar
//             if (_showControls)
//               Padding(
//                 padding: const EdgeInsets.only(
//                   bottom: 40.0,
//                   left: 20.0,
//                   right: 20.0,
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     VideoProgressIndicator(
//                       videoController,
//                       allowScrubbing: true,
//                       colors: const VideoProgressColors(
//                         playedColor: Colors.red,
//                         backgroundColor: Colors.grey,
//                         bufferedColor: Colors.white,
//                       ),
//                     ),
//                     Row(
//                       children: [
//                         Text(
//                           videoController.value.position.toString(),
//                           style: const TextStyle(color: Colors.white),
//                         ),
//                         Text(
//                           videoController.value.duration.toString(),
//                           style: const TextStyle(color: Colors.white),
//                         )
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//           ],
//         ),
//       ),
//       // child: Stack(
//       //   alignment: Alignment.topLeft,
//       //   children: [
//       //     // Прозорий контейнер на весь екран відео
//       //     Positioned.fill(
//       //       child: _showControls
//       //           ? Container(color: Colors.black38)
//       //           : const SizedBox.shrink(),
//       //     ),
//       //     if (_showControls)
//       //       Positioned(
//       //         top: 40.0,
//       //         left: 20.0,
//       //         child: SvgPicture.asset(
//       //           'assets/icons/ArrowBack.svg',
//       //           colorFilter: const ColorFilter.mode(
//       //             Colors.white,
//       //             BlendMode.srcIn,
//       //           ),
//       //         ),
//       //       ),
//       //     // Прогресбар зверху
//       //     if (_showControls)
//       //       Padding(
//       //         padding: const EdgeInsets.only(
//       //           bottom: 40.0,
//       //           left: 20.0,
//       //           right: 20.0,
//       //         ),
//       //         child: Column(
//       //           mainAxisAlignment: MainAxisAlignment.end,
//       //           children: [
//       //             Row(
//       //               mainAxisAlignment: MainAxisAlignment.end,
//       //               children: [
//       //                 SvgPicture.asset(
//       //                   'assets/icons/FullScreen.svg',
//       //                 ),
//       //               ],
//       //             ),
//       //             const SizedBox(
//       //               height: 10.0,
//       //             ),
//       //             VideoProgressIndicator(
//       //               videoController,
//       //               allowScrubbing: true,
//       //               colors: const VideoProgressColors(
//       //                 playedColor: Colors.red,
//       //                 backgroundColor: Colors.grey,
//       //                 bufferedColor: Colors.white,
//       //               ),
//       //             ),
//       //             Row(
//       //               children: [
//       //                 Text(
//       //                   videoController.value.position.toString(),
//       //                   style: const TextStyle(color: Colors.white),
//       //                 ),
//       //                 Text(
//       //                   videoController.value.duration.toString(),
//       //                   style: const TextStyle(color: Colors.white),
//       //                 )
//       //               ],
//       //             )
//       //           ],
//       //         ),
//       //       ),

//       //     // Кнопка Play/Pause по центру
//       //     if (_showControls)
//       //       Center(
//       //         child: IconButton(
//       //           iconSize: 48,
//       //           icon: videoController.value.isPlaying
//       //               ? Container(
//       //                   width: 56.0,
//       //                   height: 56.0,
//       //                   decoration: BoxDecoration(
//       //                     shape: BoxShape.circle,
//       //                     color: Colors.white.withValues(
//       //                       alpha: 0.5,
//       //                     ),
//       //                   ),
//       //                   child: Center(
//       //                     child: SvgPicture.asset(
//       //                       fit: BoxFit.scaleDown,
//       //                       'assets/icons/Pause.svg',
//       //                     ),
//       //                   ),
//       //                 )
//       //               : Container(
//       //                   width: 56.0,
//       //                   height: 56.0,
//       //                   decoration: BoxDecoration(
//       //                     shape: BoxShape.circle,
//       //                     color: Colors.white.withValues(
//       //                       alpha: 0.5,
//       //                     ),
//       //                   ),
//       //                   child: SvgPicture.asset(
//       //                     fit: BoxFit.scaleDown,
//       //                     'assets/icons/PolygonBig.svg',
//       //                   ),
//       //                 ),
//       //           color: Colors.white,
//       //           onPressed: () {
//       //             if (videoController.value.isPlaying) {
//       //               videoController.pause();
//       //               setState(() {});
//       //             } else {
//       //               videoController.play();
//       //               setState(() {});
//       //             }
//       //           },
//       //         ),
//       //       ),
//       //   ],
//       // ),
//     );
//   }
// // }

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
    _startHideTimer(); // стартуємо таймер одразу
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final controller = ChewieController.of(context);
      controller.videoPlayerController.addListener(() {
        if (mounted && _showControls) {
          setState(() {});
        }
      });
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
    print("Controls: $_showControls");
    final controller = ChewieController.of(context);
    final videoController = controller.videoPlayerController;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: _onUserInteraction,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Прозорий контейнер на весь екран відео
          if (_showControls)
            Positioned.fill(
              child: Container(color: Colors.black38),
            ),

          // Верхній лівий кут (ArrowBack)
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

          // Прогрес бар та інші елементи
          if (_showControls)
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () => context
                              .read<CourseDetailsBloc>()
                              .add(FullScreenEvent()),
                          icon: SvgPicture.asset(
                            'assets/icons/FullScreen.svg',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    VideoProgressIndicator(
                      videoController,
                      allowScrubbing: true,
                      colors: const VideoProgressColors(
                        playedColor: Colors.red,
                        backgroundColor: Colors.grey,
                        bufferedColor: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          videoController.value.position.toString(),
                          style: const TextStyle(color: Colors.white),
                        ),
                        Text(
                          videoController.value.duration.toString(),
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),

          // Кнопка Play/Pause по центру
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
                          color: Colors.white.withValues(alpha: 0.5),
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
                          color: Colors.white.withOpacity(0.5),
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
                    setState(() {});
                  } else {
                    videoController.play();
                    setState(() {});
                  }
                },
              ),
            ),
        ],
      ),
    );
  }
}
