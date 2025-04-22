import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/utils/constants.dart';
import 'package:online_app/widgets/search_modal_sheet/filter_categories_builder.dart';
import 'package:online_app/widgets/search_modal_sheet/filter_durations_builder.dart';

class SearchModalSheet extends StatelessWidget {
  const SearchModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final appColorsModel = Theme.of(context).extension<AppColorsModel>();
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        color: Theme.of(context).extension<AppColorsModel>()?.onSurface,
      ),
      height: MediaQuery.of(context).size.height / 1.4,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: SvgPicture.asset(
                      'assets/icons/close.svg',
                      colorFilter: ColorFilter.mode(
                        appColorsModel!.mainTextColor,
                        BlendMode.srcIn,
                      ),
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
                      color: appColorsModel.mainTextColor,
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Text(
                'Categories',
                style: AppFonts.poppinsMedium.copyWith(
                  color: appColorsModel.mainTextColor,
                  fontSize: 16.0,
                ),
              ),
            ),
            const FilterCategoriesBuilder(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Text(
                'Price',
                style: AppFonts.poppinsMedium.copyWith(
                  color: appColorsModel.mainTextColor,
                  fontSize: 16.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 12.0,
                bottom: 23.0,
              ),
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackHeight: 1.0,
                ),
                child: RangeSlider(
                  values: const RangeValues(0, 400),
                  min: 0,
                  max: 400,
                  activeColor: AppColors.deepBlueColor,
                  inactiveColor: appColorsModel.hintTextColor,
                  labels: const RangeLabels(
                    "0",
                    "400",
                  ),
                  // divisions: (state.priceValues.end.toInt() > 0
                  //     ? state.priceValues.end.toInt()
                  //     : 1),
                  onChanged: (RangeValues range) {},
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Text(
                'Duration',
                style: AppFonts.poppinsMedium.copyWith(
                  color: appColorsModel.mainTextColor,
                  fontSize: 16.0,
                ),
              ),
            ),
            const FilterDurationsBuilder(),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: AppColors.deepBlueColor,
                          width: 0.5,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 12.0,
                          horizontal: 22.0,
                        ),
                        child: Text(
                          'Clear',
                          style: AppFonts.poppinsMedium.copyWith(
                            color: AppColors.deepBlueColor,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: SizedBox(
                      // width: double.infinity,
                      height: 50.0,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text('Apply Filter'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
