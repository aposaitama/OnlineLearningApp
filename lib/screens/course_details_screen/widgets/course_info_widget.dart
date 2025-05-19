import 'package:flutter/material.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/utils/extensions.dart';

class CourseInfoWidget extends StatefulWidget {
  final String courseTitle;
  final String courseDescription;
  final double coursePrice;
  final int courseDuration;
  final int courseVideoLength;

  CourseInfoWidget({
    super.key,
    required this.courseTitle,
    required this.courseDescription,
    required this.coursePrice,
    required this.courseDuration,
    required this.courseVideoLength,
  });

  @override
  State<CourseInfoWidget> createState() => _CourseInfoWidgetState();
}

class _CourseInfoWidgetState extends State<CourseInfoWidget> {
  bool _expanded = false;
  final int _maxLines = 2;

  void _expandDescription() {
    setState(() {
      _expanded = !_expanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.courseTitle,
                style: AppFonts.poppinsBold.copyWith(
                  color: Theme.of(context)
                      .extension<AppColorsModel>()!
                      .mainTextColor,
                  fontSize: 20.0,
                  height: 2.0,
                ),
              ),
              Text(
                '\$${widget.coursePrice.toString()}',
                style: AppFonts.poppinsBold.copyWith(
                  color: AppColors.deepBlueColor,
                  fontSize: 20.0,
                  height: 2.0,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 4.0,
          ),
          Row(
            children: [
              Text(
                widget.courseDuration.toTimeFormat(),
                style: AppFonts.poppinsRegular.copyWith(
                  color: Theme.of(context)
                      .extension<AppColorsModel>()!
                      .hintTextColor,
                  fontSize: 12.0,
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Text(
                '${widget.courseVideoLength.toString()} Lessons',
                style: AppFonts.poppinsRegular.copyWith(
                  color: Theme.of(context)
                      .extension<AppColorsModel>()!
                      .hintTextColor,
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            'About this course',
            style: AppFonts.poppinsBold.copyWith(
              color:
                  Theme.of(context).extension<AppColorsModel>()!.mainTextColor,
              fontSize: 16.0,
              height: 2.0,
            ),
          ),
          Text(
            widget.courseDescription,
            style: AppFonts.poppinsRegular.copyWith(
              color:
                  Theme.of(context).extension<AppColorsModel>()!.hintTextColor,
              fontSize: 12.0,
            ),
            maxLines: _expanded ? null : _maxLines,
            overflow: _expanded ? TextOverflow.visible : TextOverflow.ellipsis,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Center(
              child: GestureDetector(
                onTap: _expandDescription,
                child: Icon(
                  _expanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
