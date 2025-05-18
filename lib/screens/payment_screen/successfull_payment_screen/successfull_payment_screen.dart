import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/gen/assets.gen.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/widgets/custom_filled_button.dart';

class SuccessfullPaymentScreen extends StatelessWidget {
  const SuccessfullPaymentScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    void onStartLearningPressed() {
      context.go('/my_courses');
    }

    final heigth = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          bottom: heigth / 4,
          left: 20.0,
          right: 20.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Assets.icons.successfullPayment,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              'Successful purchase!',
              style: AppFonts.poppinsMedium.copyWith(
                fontSize: 16.0,
                color: Theme.of(context)
                    .extension<AppColorsModel>()
                    ?.mainTextColor,
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            CustomFilledButton(
              onTap: onStartLearningPressed,
              buttonTitle: 'Start learning',
            ),
          ],
        ),
      ),
    );
  }
}
