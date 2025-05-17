import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_app/gen/assets.gen.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_fonts.dart';

class ActionsItemTile extends StatelessWidget {
  final String actionsTitle;
  final String actionsButtonTitle;
  final String actionsImage;
  final void Function()? onActionTap;
  const ActionsItemTile(
      {super.key,
      required this.actionsTitle,
      required this.actionsImage,
      this.onActionTap,
      required this.actionsButtonTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 10.0,
      ),
      child: Container(
        height: 154.0,
        width: 250.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            13.0,
          ),
          color: AppColors.lightBlueColor,
        ),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            SvgPicture.asset(
              actionsImage,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 18.5,
                left: 18.5,
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  actionsTitle,
                  style: AppFonts.poppinsBold.copyWith(
                    fontSize: 16.0,
                    height: 1.5,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 18.5,
                left: 20.0,
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: GestureDetector(
                  onTap: onActionTap,
                  child: Container(
                    padding: const EdgeInsets.all(
                      8.0,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.orangeProgressBarColor,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Text(
                      actionsButtonTitle,
                      style: AppFonts.poppinsBold.copyWith(
                        fontSize: 12.0,
                        height: 1.5,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
