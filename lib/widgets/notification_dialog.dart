import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:online_app/utils/extensions.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';

class NotificationDialog {
  static Future<void> showNotificationDialog(
      BuildContext context, RemoteMessage message) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final DateTime messageSentTime = message.sentTime!;
    final String messageBody = message.notification?.body ?? '';
    final String messageTitle = message.notification?.title ?? '';
    final String messageImageUrl =
        message.notification?.android?.imageUrl ?? '';
    final String authorImageUrl = message.data['authorImage'];
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
        content: Container(
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
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 48.0,
                        height: 48.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            13.0,
                          ),
                          color: Colors.transparent,
                        ),
                        child: (authorImageUrl.isNotEmpty)
                            ? ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  13.0,
                                ),
                                child: CachedNetworkImage(
                                  imageUrl: authorImageUrl,
                                  fit: BoxFit.cover,
                                  errorWidget: (context, url, error) {
                                    return const Icon(Icons.error);
                                  },
                                )
                                // Image.network(
                                //   authorImageUrl,
                                //   fit: BoxFit.cover,
                                // ),
                                )
                            : const SizedBox.shrink(),
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            messageTitle,
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
                      top: 5.0,
                    ),
                    child: Text(
                      messageSentTime.timeToString(),
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
                messageBody,
                style: AppFonts.poppinsRegular.copyWith(
                  color: !isDark ? AppColors.darkHintTextColor : Colors.white,
                  fontSize: 12.0,
                  height: 1.5,
                ),
              ),
              const SizedBox(
                height: 13.0,
              ),
              messageImageUrl.isNotEmpty
                  ? Container(
                      height: 145.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(
                          13.0,
                        ),
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            13.0,
                          ),
                          child: CachedNetworkImage(
                            imageUrl: messageImageUrl,
                            fit: BoxFit.cover,
                            errorWidget: (context, url, error) {
                              return const Icon(Icons.error);
                            },
                          )
                          // Image.network(
                          //   messageImageUrl,
                          //   fit: BoxFit.cover,
                          // ),
                          ),
                    )
                  : const SizedBox.shrink()
            ],
          ),
        ),
        // actionsPadding: const EdgeInsets.symmetric(
        //   horizontal: 16.0,
        // ),
        // actions: [
        //   CustomFilledButton(
        //     buttonTitle: 'Done',
        //   ),
        //   const SizedBox(
        //     height: 36.0,
        //   ),
        // ],
      ),
    );
  }
}
