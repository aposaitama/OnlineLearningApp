import 'package:flutter/material.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerCategoriesItemTile extends StatelessWidget {
  const ShimmerCategoriesItemTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Shimmer.fromColors(
            baseColor: Theme.of(context).extension<AppColorsModel>()!.onSurface,
            highlightColor: Colors.grey.withValues(
              alpha: 0.5,
            ),
            child: Container(
              height: 80.0,
              width: 160.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13.0),
                color: Theme.of(context).extension<AppColorsModel>()!.onSurface,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
