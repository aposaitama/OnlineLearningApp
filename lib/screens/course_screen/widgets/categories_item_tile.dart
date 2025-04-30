import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_app/resources/app_colors.dart';

class CategoriesItemTile extends StatelessWidget {
  final String backgroundColor;
  final String textColor;
  final String imageUrl;
  final String categoryTitle;
  const CategoriesItemTile({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    required this.imageUrl,
    required this.categoryTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
          ),
          child: Container(
            height: 90.0,
            width: 160.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                13.0,
              ),
              color: AppColors.lightBlueColor,
            ),
            child: Center(
              child: Text(categoryTitle),
            ),
          ),
        ),
        SvgPicture.network('http://localhost:1337${imageUrl}'),
      ],
    );
    // Padding(
    //   padding: const EdgeInsets.only(
    //     right: 10.0,
    //   ),
    //   child: Container(
    //     height: 90.0,
    //     width: 160.0,
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(
    //         13.0,
    //       ),
    //       color: AppColors.lightBlueColor,
    //     ),
    //     child: Center(
    //       child: Text(categoryTitle),
    //     ),
    //   ),
    // );
  }
}
