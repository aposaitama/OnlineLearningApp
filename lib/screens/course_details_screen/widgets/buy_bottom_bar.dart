import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/widgets/custom_filled_button.dart';

class BuyBottomBar extends StatelessWidget {
  final void Function()? onBuyButtonPressed;
  const BuyBottomBar({super.key, this.onBuyButtonPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).extension<AppColorsModel>()!.onSurface,
        boxShadow: [
          BoxShadow(
            color: AppColors.darkHintTextColor.withValues(
              alpha: 0.1,
            ),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(
              -2,
              -5,
            ),
          ),
        ],
      ),
      height: 98.0,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 14.0,
          left: 20.0,
          right: 20.0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 89.0,
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  13.0,
                ),
                color: AppColors.pinkColor,
              ),
              child: Center(
                child: SvgPicture.asset(
                  'assets/icons/Star.svg',
                ),
              ),
            ),
            const SizedBox(
              width: 14.0,
            ),
            Expanded(
              child: CustomFilledButton(
                onTap: onBuyButtonPressed,
                buttonTitle: 'Buy Now',
              ),
            )
          ],
        ),
      ),
    );
  }
}
