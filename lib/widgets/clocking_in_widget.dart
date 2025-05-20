import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/screens/home_screen/bloc/home_screen_bloc/home_screen_bloc.dart';
import 'package:online_app/screens/home_screen/bloc/home_screen_bloc/home_screen_bloc_state.dart';
import 'package:online_app/widgets/clocking_stat_item_tile.dart';
import 'package:online_app/widgets/custom_filled_button.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

final GlobalKey repaintBoundaryKey = GlobalKey();

class ClockingInWidget {
  static Future<void> _shareUserStatImage() async {
    final RenderRepaintBoundary boundary = repaintBoundaryKey.currentContext!
        .findRenderObject()! as RenderRepaintBoundary;
    final ui.Image image = await boundary.toImage();
    final ByteData? byteData = await image.toByteData(
      format: ui.ImageByteFormat.png,
    );
    final Uint8List pngBytes = byteData!.buffer.asUint8List();

    final tempDir = await getTemporaryDirectory();
    final file = await File(
      '${tempDir.path}/stat_image.png',
    ).create();
    await file.writeAsBytes(
      pngBytes,
    );
    await SharePlus.instance.share(
      ShareParams(
        text: 'Check out my learning stats!',
        files: [
          XFile(
            file.path,
          ),
        ],
      ),
    );
  }

  static Future<void> showUserStatDialog(
    BuildContext context,
  ) {
    return showDialog(
      context: context,
      builder: (_) => Dialog(
        backgroundColor:
            Theme.of(context).extension<AppColorsModel>()?.onSurface,
        child: BlocBuilder<HomeScreenBloc, HomeScreenState>(
          builder: (context, state) {
            final String learnedToday =
                (state.userInfo?.learnedToday ?? 0.0).toStringAsFixed(0);
            final String totallyHours =
                (state.userInfo?.totallyLearningHours ?? 0.0)
                    .toStringAsFixed(0);
            final String totallyDays =
                (state.userInfo?.totallyLearningDays ?? 0.0).toStringAsFixed(0);
            final int userCurrentLearingnStreak =
                (state.userInfo?.userLearningStreak ?? 0);
            return Stack(
              alignment: Alignment.bottomCenter,
              clipBehavior: Clip.none,
              children: [
                RepaintBoundary(
                  key: repaintBoundaryKey,
                  child: Container(
                    height: 442,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 14.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 13.0,
                        ),
                        Text(
                          'Clocking in!',
                          style: AppFonts.poppinsBold.copyWith(
                            color: Theme.of(context)
                                .extension<AppColorsModel>()
                                ?.mainTextColor,
                            fontSize: 24.0,
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'GOOD JOB!',
                          style: AppFonts.poppinsRegular.copyWith(
                            color: Theme.of(context)
                                .extension<AppColorsModel>()
                                ?.hintTextColor,
                            fontSize: 14.0,
                          ),
                        ),
                        const SizedBox(
                          height: 45.0,
                        ),
                        SizedBox(
                          height: 125.0,
                          child: GridView.count(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 15,
                            childAspectRatio: 125 / 52,
                            children: [
                              ClockingStatItemTile(
                                statTitle: 'Leaned today',
                                statCount: learnedToday,
                                statSystem: ' min',
                              ),
                              ClockingStatItemTile(
                                statTitle: 'totally hours',
                                statCount: totallyHours,
                                statSystem: ' hrs',
                              ),
                              ClockingStatItemTile(
                                statTitle: 'Totally days',
                                statCount: totallyDays,
                                statSystem: ' days',
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 33.0,
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Record of learning',
                                  style: AppFonts.poppinsRegular.copyWith(
                                    color: Theme.of(context)
                                        .extension<AppColorsModel>()
                                        ?.mainTextColor,
                                    height: 1.5,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 14.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(7, (index) {
                            final streak = userCurrentLearingnStreak;

                            // Якщо менше 4 — показати сині кружечки по кількості стріку, інші білі
                            if (streak < 4) {
                              final isFilled = index < streak;

                              return Container(
                                width: 28.0,
                                height: 28.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: isFilled
                                      ? AppColors.deepBlueColor
                                      : Colors.grey.shade300,
                                ),
                                child: Center(
                                  child: Text(
                                    (index + 1).toString(),
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ),
                              );
                            }

                            final int middleStart = 3;
                            final int greyStart = 5;

                            if (index < middleStart) {
                              final int number = streak - (2 - index);

                              return Container(
                                width: 28.0,
                                height: 28.0,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.deepBlueColor,
                                ),
                                child: Center(
                                  child: Text(
                                    number.toString(),
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ),
                              );
                            } else {
                              return Container(
                                width: 28.0,
                                height: 28.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.shade300,
                                ),
                                child: Center(
                                  child: Text(
                                    ((streak - 2) + index).toString(),
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ),
                              );
                            }
                          }),
                        ),
                        const Spacer(),
                        CustomFilledButton(
                          buttonTitle: 'Share',
                          onTap: () => _shareUserStatImage(),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 450,
                  child: IconButton(
                    color: Colors.white,
                    icon: Container(
                      height: 44.0,
                      width: 44.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                          color: const Color.fromARGB(255, 174, 172, 172),
                        ),
                        shape: BoxShape.circle,
                        color: Theme.of(context)
                            .extension<AppColorsModel>()
                            ?.hintTextColor,
                      ),
                      child: const Icon(
                        Icons.close,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
