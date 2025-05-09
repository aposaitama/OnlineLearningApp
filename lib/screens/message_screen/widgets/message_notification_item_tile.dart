import 'package:flutter/material.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/utils/extensions.dart';

class MessageNotificationItemTile extends StatelessWidget {
  final String notificationAuthor;
  final String notificationDescription;
  final DateTime date;
  final String? imageUrl;
  final String? notificationAuthorImageUrl;
  const MessageNotificationItemTile({
    super.key,
    required this.notificationAuthor,
    required this.notificationDescription,
    required this.date,
    this.imageUrl,
    this.notificationAuthorImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      padding: const EdgeInsets.all(
        20.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          13.0,
        ),
        color: Theme.of(context).extension<AppColorsModel>()?.onSurface,
        boxShadow: [
          BoxShadow(
            color: AppColors.darkHintTextColor.withValues(
              alpha: 0.1,
            ),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(
              2,
              5,
            ),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  notificationAuthorImageUrl != null
                      ? (notificationAuthorImageUrl!.isNotEmpty)
                          ? Container(
                              width: 48.0,
                              height: 48.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  13.0,
                                ),
                                color: AppColors.deepBlueColor,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  13.0,
                                ),
                                child: Image.network(
                                  notificationAuthorImageUrl!,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          : const SizedBox.shrink()
                      : Container(
                          width: 48.0,
                          height: 48.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              13.0,
                            ),
                            color: AppColors.deepBlueColor,
                          ),
                        ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        notificationAuthor,
                        style: AppFonts.poppinsBold.copyWith(
                          color: Theme.of(context)
                              .extension<AppColorsModel>()!
                              .mainTextColor,
                          fontSize: 12.0,
                          height: 2.0,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 3.0,
                ),
                child: Text(
                  date.timeToString(),
                  style: AppFonts.poppinsRegular.copyWith(
                    color: Theme.of(context)
                        .extension<AppColorsModel>()
                        ?.hintTextColor,
                    fontSize: 12.0,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 13.0,
          ),
          Text(
            notificationDescription,
            style: AppFonts.poppinsRegular.copyWith(
              color: !isDark ? AppColors.darkHintTextColor : Colors.white,
              fontSize: 12.0,
              height: 1.5,
            ),
          ),
          imageUrl != null
              ? imageUrl!.isNotEmpty
                  ? Column(
                      children: [
                        const SizedBox(
                          height: 13.0,
                        ),
                        Container(
                          height: 145.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColors.pinkColor,
                            borderRadius: BorderRadius.circular(
                              13.0,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              13.0,
                            ),
                            child: Image.network(
                              imageUrl!,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    )
                  : const SizedBox.shrink()
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}
