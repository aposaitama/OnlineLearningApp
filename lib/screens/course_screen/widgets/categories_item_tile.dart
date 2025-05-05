import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_fonts.dart';

import 'package:online_app/utils/extensions.dart';

class CategoriesItemTile extends StatelessWidget {
  final String backgroundColor;
  final String textColor;
  final String imageUrl;
  final String categoryTitle;
  final String textBackgroundColor;

  const CategoriesItemTile({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    required this.imageUrl,
    required this.categoryTitle,
    required this.textBackgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
          ),
          child: Container(
            height: 80.0,
            width: 160.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                13.0,
              ),
              color: backgroundColor.toColor(),
            ),
          ),
        ),

        CachedNetworkImage(
          imageUrl: 'http://localhost:1337$imageUrl',
          width: 110.0,
          height: 85.0,
        ),
        Positioned(
          right: 0,
          bottom: 8.0,
          child: Container(
            width: 82.0,
            height: 24.0,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(13),
                bottomLeft: Radius.circular(13),
              ),
              color: textBackgroundColor.toColor(),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Center(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    categoryTitle,
                    style: TextStyle(
                      color: textColor.toColor(),
                    ),
                  ),
                ),
              ),
            ),

        Positioned(
          left: 3,
          child: SvgPicture.network(
            'http://localhost:1337$imageUrl',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 10.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      20.0,
                    ),
                    bottomLeft: Radius.circular(
                      20.0,
                    ),
                  ),
                  color: AppColors.lightBlueColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 7.0,
                    right: 3.0,
                    bottom: 3.0,
                    top: 3.0,
                  ),
                  child: Text(
                    categoryTitle,
                    style: AppFonts.poppinsMedium.copyWith(
                      color: textColor.toColor(),
                      fontSize: 14.0,
                    ),
                  ),
                ),
              )
            ],

          ),
        )
      ],
    );
  }
}
