import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
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
          padding: const EdgeInsets.only(top: 10.0),
          child: Container(
            height: 80.0,
            width: 160.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13.0),
              color: HexColorExtension(backgroundColor).toColor(),
            ),
          ),
        ),
        Positioned(
          left: 0,
          child: CachedNetworkImage(
            imageUrl: 'http://localhost:1337$imageUrl',
            width: 110.0,
            height: 85.0,
            errorWidget: (context, url, error) {
              return const Icon(Icons.error);
            },
          ),
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
              color: HexColorExtension(textBackgroundColor).toColor(),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    categoryTitle,
                    style: TextStyle(
                      color: HexColorExtension(textColor).toColor(),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
