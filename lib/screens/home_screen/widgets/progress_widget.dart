import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/screens/home_screen/widgets/gradient_progress_bar.dart';

class ProgressWidget extends StatelessWidget {
  const ProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: 58.0,
              decoration: const BoxDecoration(
                color: AppColors.deepBlueColor,
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            top: 10.0,
          ),
          child: Container(
              height: 96.0,
              decoration: BoxDecoration(
                color: Theme.of(context).extension<AppColorsModel>()?.onSurface,
                borderRadius: BorderRadius.circular(
                  15.0,
                ),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.darkHintTextColor.withValues(
                      alpha: 0.1,
                    ),
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: const Offset(2, 5),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 16.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Learned today',
                          style: AppFonts.poppinsRegular.copyWith(
                            color: Theme.of(context)
                                .extension<AppColorsModel>()
                                ?.hintTextColor,
                            fontSize: 12.0,
                          ),
                        ),
                        Text(
                          'My courses',
                          style: AppFonts.poppinsRegular.copyWith(
                            color: AppColors.deepBlueColor,
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '46min',
                          style: AppFonts.poppinsBold.copyWith(
                            color: Theme.of(context)
                                .extension<AppColorsModel>()
                                ?.mainTextColor,
                            fontSize: 20.0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 3.0,
                          ),
                          child: Text(
                            ' / 60min',
                            style: AppFonts.poppinsRegular.copyWith(
                              color: Theme.of(context)
                                  .extension<AppColorsModel>()
                                  ?.hintTextColor,
                              fontSize: 10.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const GradientProgressBar(
                      value: 0.4,
                    )
                  ],
                ),
              )
              // Row(
              //   children: [
              //     Expanded(
              //       child: Padding(
              //         padding: const EdgeInsets.only(
              //           top: 25.0,
              //           left: 22.0,
              //         ),
              //         child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Text(
              //               'Meetup',
              //               style: AppFonts.poppinsMedium.copyWith(
              //                 color: AppColors.darkPurpleColor,
              //                 fontSize: 24.0,
              //               ),
              //             ),
              //             Text(
              //               'Off-line exchange of learning experiences',
              //               style: AppFonts.poppinsRegular.copyWith(
              //                 color: AppColors.darkPurpleColor,
              //                 fontSize: 12.0,
              //               ),
              //             )
              //           ],
              //         ),
              //       ),
              //     ),
              //     const SizedBox(
              //       width: 10.0,
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.only(
              //         right: 13.0,
              //       ),
              //       child: SvgPicture.asset(
              //         fit: BoxFit.scaleDown,
              //         'assets/icons/Meetup_icon.svg',
              //       ),
              //     )
              //   ],
              // ),
              ),
        ),
      ],
    );
  }
}
