import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/gen/assets.gen.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';

class SearchModalSheet extends StatelessWidget {
  const SearchModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          20.0,
        ),
        color: Theme.of(context).extension<AppColorsModel>()?.onSurface,
      ),
      height: MediaQuery.of(context).size.height / 1.4,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25.0,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 30.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => context.pop(),
                  child: SvgPicture.asset(
                    Assets.icons.close,
                    colorFilter: ColorFilter.mode(
                      Theme.of(context)
                          .extension<AppColorsModel>()!
                          .mainTextColor,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 3.0,
                  ),
                  child: Text(
                    'Search Filter',
                    style: AppFonts.poppinsMedium.copyWith(
                      color: Theme.of(context)
                          .extension<AppColorsModel>()
                          ?.mainTextColor,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 14.0,
                  width: 14.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
