import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_app/gen/assets.gen.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/widgets/custom_filled_button.dart';

class SuccessRegistration {
  static Future<void> show(
    BuildContext context,
    void Function()? onTap,
  ) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            15.0,
          ),
        ),
        backgroundColor:
            Theme.of(context).extension<AppColorsModel>()?.onSurface,
        contentPadding: const EdgeInsets.all(
          0.0,
        ),
        content: Padding(
          padding: const EdgeInsets.only(
            top: 48.0,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                Assets.icons.success,
              ),
              const SizedBox(
                height: 19.0,
              ),
              Text(
                'Success',
                style: AppFonts.poppinsMedium.copyWith(
                  fontSize: 16.0,
                  color: Theme.of(context)
                      .extension<AppColorsModel>()
                      ?.mainTextColor,
                ),
              ),
              const SizedBox(
                height: 9.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 60.0,
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  'Congratulations, you have completed your registration!',
                  style: AppFonts.poppinsRegular.copyWith(
                    fontSize: 12.0,
                    height: 1.5,
                    color: Theme.of(context)
                        .extension<AppColorsModel>()
                        ?.hintTextColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 17.0,
              )
            ],
          ),
        ),
        actionsPadding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        actions: [
          CustomFilledButton(
            onTap: onTap,
            buttonTitle: 'Done',
          ),
          const SizedBox(
            height: 36.0,
          ),
        ],
      ),
    );
  }
}
