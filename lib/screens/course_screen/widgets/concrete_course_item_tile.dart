import 'package:flutter/material.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';

class ConcreteCourseItemTile extends StatelessWidget {
  final String concreteCourseTitle;
  const ConcreteCourseItemTile({super.key, required this.concreteCourseTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 16.0,
      ),
      child: Container(
        height: 96.0,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            13.0,
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.darkHintTextColor.withValues(
                alpha: 0.1,
              ),
              spreadRadius: 2,
              blurRadius: 10,
              offset: const Offset(
                2,
                5,
              ),
            ),
          ],
          color: Theme.of(context).extension<AppColorsModel>()?.onSurface,
        ),
        child: Row(
          children: [
            Container(
              height: 68.0,
              width: 68.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  13.0,
                ),
                color: AppColors.darkHintTextColor,
              ),
            ),
            const SizedBox(
              width: 35.0,
            ),
            Row(
              children: [Text(concreteCourseTitle)],
            )
          ],
        ),
      ),
    );
  }
}
