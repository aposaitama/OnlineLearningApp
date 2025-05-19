import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
  final CarouselSliderController _carouselController = CarouselSliderController();

  @override
  void initState() {
    super.initState();
  }

  int _currentIndex = 0;

  void _pageChange(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> onboardingWidgets = [
    OnboardingWidget(
      title: 'Numerous free\ntrial courses',
      subtitle: 'Free courses for you to\nfind your way to learning',
      image: Assets.images.onboardingFirst.image(),
      currentPage: 0,
    ),
    OnboardingWidget(
      title: 'Quick and easy\nlearning',
      subtitle:
          'Easy and fast learning at\nany time to help you\nimprove various skills',
      image: Assets.images.onboardingSecond.image(),
      currentPage: 1,
    ),
    OnboardingWidget(
      title: 'Create your own\nstudy plan',
      subtitle:
          'Study according to the\nstudy plan, make study\nmore motivated',
      image: Assets.images.onboardingThird.image(),
      currentPage: 2,
    ),
  ];

  void _login(){
    context.go('/login');
  }

  void _register(){
    context.go('/register');
  }

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 50.0,),
            _currentIndex != 2
                ? Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: 40.0,
                      child: TextButton(
                        onPressed: () {
                          _carouselController.animateToPage(2);
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
                : const SizedBox(
                    height: 40.0,
                  ),
            Column(
              children: [
                CarouselSlider(
                  carouselController: _carouselController,
                  items: onboardingWidgets,
                  options: CarouselOptions(
                    viewportFraction: 1.0,
                    height: MediaQuery.of(context).size.height * 0.6,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                ),
                AnimatedSmoothIndicator(
                  activeIndex: _currentIndex,
                  count: onboardingWidgets.length,
                  effect: const WormEffect(
                    activeDotColor: AppColors.deepBlueColor,
                    dotColor: AppColors.lightGreyColor,
                    dotHeight: 5.0,
                    dotWidth: 10.0,
                  ),
                ),
              ],
            ),
            const Spacer(),
            SafeArea(
              child: Column(
                children: [
                  if (_currentIndex == 2)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 160.0,
                          height: 50.0,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            onPressed: _register,
                            child: const Text('Sign up'),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Container(
                          width: 160.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            border: Border.all(
                              color: isDark
                                  ? Colors.transparent
                                  : AppColors.deepBlueColor,
                              width: 2,
                            ),
                            color: isDark
                                ? AppColors.lightGreyColor
                                : Colors.transparent,
                          ),
                          child: TextButton(
                            onPressed: _login,
                            child: Text(
                              'Log in',
                              style: AppFonts.poppinsRegular.copyWith(
                                color: isDark
                                    ? Colors.white
                                    : AppColors.deepBlueColor,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  else
                    const SizedBox.shrink(),
                ],
              ),
            ),
            const SizedBox(height: 50.0,),
          ],
        ),
      ),

    );
  }
}
