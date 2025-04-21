import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/screens/home_screen/widgets/meetup_widget.dart';
import 'package:online_app/screens/home_screen/widgets/progress_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 85.0,
        backgroundColor: AppColors.deepBlueColor,
        centerTitle: false,
        title: RichText(
          textAlign: TextAlign.left,
          text: TextSpan(
            text: 'Hi, Kristin \n',
            style: AppFonts.poppinsBold.copyWith(
              color: Colors.white,
              fontSize: 24.0,
              height: 2.0,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'Let’s start learning',
                style: AppFonts.poppinsRegular.copyWith(
                  color: Colors.white,
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 21.0,
            ),
            child: GestureDetector(
              onTap: () {
                context.go('/account');
              },
              child: SvgPicture.asset(
                'assets/icons/UserImage.svg',
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const ProgressWidget(),
          const SizedBox(
            height: 16.0,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
            ),
            child: SizedBox(
              height: 154.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, index) {
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
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 25.0,
                    ),
                    Text(
                      'Learning Plan',
                      style: AppFonts.poppinsMedium.copyWith(
                        color: Theme.of(context)
                            .extension<AppColorsModel>()
                            ?.mainTextColor,
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      height: 133.0,
                      decoration: BoxDecoration(
                        color: Theme.of(context)
                            .extension<AppColorsModel>()
                            ?.onSurface,
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
                        borderRadius: BorderRadius.circular(
                          15.0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 14.0,
                    ),
                    const MeetupWidget(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
