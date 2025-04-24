import 'package:flutter/material.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/screens/home_screen/widgets/proggress_widget.dart';

class ProgressWidgetWithBg extends StatelessWidget {
  const ProgressWidgetWithBg({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: 58.0,
              decoration: const BoxDecoration(
                color: AppColors.deepBlueColor,
              ),
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            top: 10.0,
          ),
          child: ProggressWidget(
            myCoursesText: true,
          ),
        ),
      ],
    );
  }
}
