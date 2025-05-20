import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_app/gen/assets.gen.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class MeetupWidget extends StatelessWidget {
  const MeetupWidget({super.key});

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      final success = await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
      if (!success) {
        BotToast.showText(
          text: 'Could not launch $uri',
        );
      }
    } else {
      BotToast.showText(
        text: 'URL is not valid: $url',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _launchUrl(
        'https://maps.app.goo.gl/9zojGFyY6RpVS8N7A',
      ),
      child: Container(
        height: 120.0,
        decoration: BoxDecoration(
          color: AppColors.lightPurpleColor,
          borderRadius: BorderRadius.circular(
            15.0,
          ),
          border: Border.all(
            color: AppColors.lightPurpleColor,
            width: 0.5,
          ),
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
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 25.0,
                  left: 22.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Meetup',
                      style: AppFonts.poppinsMedium.copyWith(
                        color: AppColors.darkPurpleColor,
                        fontSize: 24.0,
                      ),
                    ),
                    Text(
                      'Off-line exchange of learning experiences',
                      style: AppFonts.poppinsRegular.copyWith(
                        color: AppColors.darkPurpleColor,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 13.0,
              ),
              child: SvgPicture.asset(
                fit: BoxFit.scaleDown,
                Assets.icons.meetupIcon,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
