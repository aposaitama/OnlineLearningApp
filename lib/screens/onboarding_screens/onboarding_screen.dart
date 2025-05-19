import 'package:flutter/material.dart';
import 'package:online_app/gen/assets.gen.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/screens/onboarding_screens/widgets/onboarding_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../resources/app_colors.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  int _currentPage = 0;

  void _pageChange(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  final List<Widget> onboardingWidgets = [
    OnboardingWidget(
      title: 'Numerous free\ntrial courses',
      subtitle: 'Free courses for you to\nfind your way to learning',
      image: Assets.images.onboardingFirst.image(),
    ),
    OnboardingWidget(
      title: 'Quick and easy\nlearning',
      subtitle:
          'Easy and fast learning at\nany time to help you\nimprove various skills',
      image: Assets.images.onboardingSecond.image(),
    ),
    OnboardingWidget(
      title: 'Create your own\nstudy plan',
      subtitle:
          'Study according to the\nstudy plan, make study\nmore motivated',
      image: Assets.images.onboardingThird.image(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Кнопка "Skip" справа вгорі
            _currentPage != 2
                ? Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16.0, top: 8.0),
                      child: TextButton(
                        onPressed: () {
                          _pageController.jumpToPage(2);
                          _pageChange(2);
                        },
                        child: Text(
                          'Skip',
                          style: AppFonts.poppinsRegular.copyWith(
                            color: Theme.of(context)
                                .extension<AppColorsModel>()!
                                .hintTextColor,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ),
                  )
                : const SizedBox.shrink(),

            // Сторінки Onboarding (займає основну висоту)
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) => _pageChange(index),
                children: onboardingWidgets,
              ),
            ),

            // Індикатор сторінок
            Column(
              children: [
                _currentPage == 2
                    ? Padding(
                        padding: const EdgeInsets.only(bottom: 32.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text('Sign up'),
                            ),
                            const SizedBox(width: 16),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text('Log in'),
                            ),
                          ],
                        ),
                      )
                    : const SizedBox.shrink(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: SmoothPageIndicator(
                    controller: _pageController,
                    count: 3,
                    effect: const WormEffect(
                      activeDotColor: AppColors.deepBlueColor,
                      dotColor: Colors.grey,
                      dotHeight: 5.0,
                      dotWidth: 9.0,
                      spacing: 8.0,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
