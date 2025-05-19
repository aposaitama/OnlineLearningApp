import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:online_app/gen/assets.gen.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/services/connectivity_service/connectivity_service.dart';
import 'package:online_app/widgets/custom_filled_button.dart';

class ErrorStatusItemTile extends StatelessWidget {
  final String iconPath;
  final String errorTitle;
  final String errorDescription;
  final String buttonTitle;
  final void Function()? onButtonTap;
  const ErrorStatusItemTile(
      {super.key,
      required this.iconPath,
      required this.errorTitle,
      required this.errorDescription,
      required this.buttonTitle,
      this.onButtonTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 65.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SvgPicture.asset(iconPath),
          ),
          const SizedBox(
            height: 36.0,
          ),
          Text(
            errorTitle,
            style: AppFonts.poppinsMedium.copyWith(
              color:
                  Theme.of(context).extension<AppColorsModel>()!.mainTextColor,
              fontSize: 16.0,
              height: 1.5,
            ),
          ),
          SizedBox(
            width: 170.0,
            child: Text(
              textAlign: TextAlign.center,
              errorDescription,
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
          onButtonTap != null
              ? CustomFilledButton(
                  onTap: () => GetIt.instance<ConnectivityService>()
                      .checkOnpressedConnection(),
                  buttonTitle: buttonTitle,
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
