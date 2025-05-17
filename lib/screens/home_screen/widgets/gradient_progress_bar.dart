import 'package:flutter/material.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';

class GradientProgressBar extends StatefulWidget {
  final double value;
  final bool isBackGroundWhite;
  final Color? progressColor;
  const GradientProgressBar({
    super.key,
    required this.value,
    this.isBackGroundWhite = false,
    this.progressColor,
  });

  @override
  State<GradientProgressBar> createState() => _GradientProgressBarState();
}

class _GradientProgressBarState extends State<GradientProgressBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _animation = Tween<double>(
      begin: 0.0,
      end: widget.value,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.decelerate,
      ),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final reversedValue = 1.0 - widget.value;
    return Container(
      height: 6.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          13.0,
        ),
        color: isDark
            ? Theme.of(context).extension<AppColorsModel>()?.hintTextColor
            : AppColors.lightGreyColor,
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            alignment: Alignment.centerRight,
            children: [
              Container(
                // width: constraints.maxWidth * value.clamp(0.0, 1.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    20.0,
                  ),
                  gradient: LinearGradient(
                    colors: [
                      isDark
                          ? Theme.of(
                              context,
                            ).extension<AppColorsModel>()!.hintTextColor
                          : AppColors.lightGreyColor,
                      widget.progressColor ?? AppColors.orangeProgressBarColor,
                    ],
                    stops: const [0.0, 1.0],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
              ),
              AnimatedBuilder(
                animation: _animation,
                builder: (context, state) {
                  final value = _animation.value.clamp(0.0, 1.0);
                  final reversedValue = 1.0 - value;
                  return Container(
                    width: constraints.maxWidth * reversedValue.clamp(0.0, 1.0),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                      color: widget.isBackGroundWhite
                          ? Colors.white
                          : isDark
                              ? Theme.of(context)
                                  .extension<AppColorsModel>()!
                                  .hintTextColor
                              : AppColors.lightGreyColor,
                    ),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
