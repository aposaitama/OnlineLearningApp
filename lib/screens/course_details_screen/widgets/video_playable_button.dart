import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_app/resources/app_colors.dart';

class VideoPlayableButton extends StatelessWidget {
  final void Function()? onPlayPressed;
  final String imagePath;
  final bool isLocked;
  const VideoPlayableButton({
    super.key,
    this.onPlayPressed,
    required this.imagePath,
    this.isLocked = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPlayPressed,
      child: Container(
        height: 44.0,
        width: 44.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: !isLocked
              ? AppColors.deepBlueColor
              : AppColors.deepBlueColor.withValues(
                  alpha: 0.3,
                ),
        ),
        child: SvgPicture.asset(
          imagePath,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
