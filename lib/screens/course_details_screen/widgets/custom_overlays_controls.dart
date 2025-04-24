import 'dart:async';

import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter_svg/svg.dart';
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
    _startHideTimer(); // перезапускаємо
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
        alignment: Alignment.bottomCenter,
        children: [
          // Прозорий контейнер на весь екран відео
          Positioned.fill(
            child: _showControls
                ? Container(color: Colors.black38)
                : const SizedBox.shrink(),
          ),

          // Прогресбар зверху
          if (_showControls)
            Padding(
              padding: const EdgeInsets.only(
                bottom: 40.0,
                left: 20.0,
                right: 20.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
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
                      )
                    ],
                  )
                ],
              ),
            ),

          // Кнопка Play/Pause по центру
          if (_showControls)
            Center(
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
