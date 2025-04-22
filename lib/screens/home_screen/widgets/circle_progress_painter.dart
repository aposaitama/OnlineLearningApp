import 'dart:math';

import 'package:flutter/material.dart';
import 'package:online_app/resources/app_colors.dart';

class CircleProgressWidget extends StatelessWidget {
  final double proggress;
  const CircleProgressWidget({super.key, required this.proggress});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20,
      height: 20,
      child: CustomPaint(
        painter: CircleProgressPainter(proggress: proggress),
      ),
    );
  }
}

class CircleProgressPainter extends CustomPainter {
  final double proggress;

  CircleProgressPainter({required this.proggress});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(
      size.width / 2,
      size.height / 2,
    );
    final radius = min(
          size.width,
          size.height,
        ) /
        2;

    final paintBackground = Paint()
      ..strokeWidth = 3
      ..color = AppColors.lightGreyColor
      ..style = PaintingStyle.stroke;

    final paintProgress = Paint()
      ..strokeWidth = 3
      ..color = AppColors.grayProgressColor
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawCircle(
      center,
      radius,
      paintBackground,
    );

    canvas.drawArc(
      Rect.fromCircle(
        center: center,
        radius: radius,
      ),
      -pi / 2, // Початок зверху
      _convertPercentageToRadian(),
      false,
      paintProgress,
    );
  }

  double _convertPercentageToRadian() {
    return 2 * pi * proggress;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
