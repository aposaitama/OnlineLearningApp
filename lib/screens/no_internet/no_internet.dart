import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:online_app/gen/assets.gen.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/services/connectivity_service/connectivity_service.dart';
import 'package:online_app/widgets/custom_filled_button.dart';

class NoInternetScreen extends StatelessWidget {
  const NoInternetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 65.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: SvgPicture.asset(
                Assets.icons.noNetwork,
              ),
            ),
            const SizedBox(
              height: 36.0,
            ),
            Text(
              'No network',
              style: AppFonts.poppinsMedium.copyWith(
                color: Theme.of(context)
                    .extension<AppColorsModel>()!
                    .mainTextColor,
                fontSize: 16.0,
                height: 1.5,
              ),
            ),
            SizedBox(
              width: 170.0,
              child: Text(
                textAlign: TextAlign.center,
                'Please check your internet connection and try again',
                style: AppFonts.poppinsRegular.copyWith(
                  color: Theme.of(context)
                      .extension<AppColorsModel>()
                      ?.hintTextColor,
                  fontSize: 12.0,
                  height: 1.5,
                ),
              ),
            ),
            const SizedBox(
              height: 23.0,
            ),
            CustomFilledButton(
              onTap: () => GetIt.instance<ConnectivityService>()
                  .checkOnpressedConnection(),
              buttonTitle: 'Try again',
            ),
          ],
        ),
      ),
    );
  }
}
