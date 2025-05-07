import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/gen/assets.gen.dart';
import 'package:online_app/navigation/cubit/navigation_cubit.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/screens/search_screen/search_screen_bloc/search_screen_bloc.dart';
import 'package:online_app/widgets/search_modal_sheet/search_modal_sheet.dart';

import '../bloc/filters_bloc/filters_bloc.dart';
import '../screens/search_screen/search_screen_bloc/search_screen_event.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  bool isBottomSheetOpen = false;

  void _onTap(int index) {
    context.read<NavigationCubit>().navigateTo(index);

    switch (index) {
      case 0:
        context.go('/home');
        break;
      case 1:
        context.go('/course');
        break;
      case 2:
        _showFilterBottomSheet();

        break;
      case 3:
        context.go('/message');
        break;
      case 4:
        context.go('/account');
        break;
    }
  }

  void _showFilterBottomSheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (bottomSheetContext) {
        return SearchModalSheet(
          applyFilters: () {
            final filterState = context.read<FiltersBloc>().state;
            context.read<SearchScreenBloc>().add(
                  GetSearchedCoursesEvent(
                    categories: filterState.selectedCategories,
                    durations: filterState.selectedDurations,
                    priceRange: filterState.priceRange,
                  ),
                );
            bottomSheetContext.pop();

            context.push('/search-screen');
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        final width = MediaQuery.of(context).size.width;
        return SizedBox(
          height: 115.0,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 95.0,
                padding: const EdgeInsets.only(bottom: 20.0),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                  color:
                      Theme.of(context).extension<AppColorsModel>()?.darkColor,
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.black.withOpacity(0.1),
                  //     blurRadius: 5,
                  //     spreadRadius: 2,
                  //   ),
                  // ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: width / 2 - 43,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              _buildNavItem(
                                0,
                                Assets.icons.home,
                                'Home',
                                state.currentIndex,
                              ),
                              _buildNavItem(
                                1,
                                Assets.icons.course,
                                'Course',
                                state.currentIndex,
                              ),
                            ],
                          ),
                        ),
                        _buildNavItem(
                          2,
                          Assets.icons.search,
                          'Search',
                          state.currentIndex,
                        ),
                        SizedBox(
                          width: width / 2 - 43,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              _buildNavItem(
                                3,
                                Assets.icons.message,
                                'Message',
                                state.currentIndex,
                              ),
                              _buildNavItem(
                                4,
                                Assets.icons.account,
                                'Account',
                                state.currentIndex,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //   children: [
                    //     _buildNavItem(0, 'assets/icons/Home.svg', 'Главная',
                    //         state.currentIndex),
                    //     _buildNavItem(1, 'assets/icons/Category.svg', 'Подборки',
                    //         state.currentIndex),
                    //     _buildNavItem(
                    //         2, 'assets/icons/Record.svg', '', state.currentIndex,
                    //         isSpecial: true),
                    //     _buildNavItem(3, 'assets/icons/Paper.svg', 'Аудиозаписи',
                    //         state.currentIndex),
                    //     _buildNavItem(4, 'assets/icons/Profile.svg', 'Профиль',
                    //         state.currentIndex),
                    //   ],
                    // ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 53.0,
                ),
                child: GestureDetector(
                  onTap: () => _showFilterBottomSheet(),
                  child: Container(
                    height: 62.0,
                    width: 62.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context)
                          .extension<AppColorsModel>()
                          ?.darkColor,
                    ),
                    child: Center(
                      child: Container(
                        height: 52.0,
                        width: 52.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context)
                              .extension<AppColorsModel>()
                              ?.bottomSearchButton,
                        ),
                        child: SvgPicture.asset(
                          fit: BoxFit.scaleDown,
                          Assets.icons.search,
                          colorFilter: const ColorFilter.mode(
                            AppColors.deepBlueColor,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Widget _buildNavItem(
    int index,
    String iconPath,
    String label,
    int currentIndex,
  ) {
    return GestureDetector(
      onTap: () => _onTap(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 2.0,
            width: 26.0,
            decoration: BoxDecoration(
              color: index == currentIndex
                  ? AppColors.deepBlueColor
                  : Colors.transparent,
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          SvgPicture.asset(
            iconPath,
            colorFilter: index == 2
                ? const ColorFilter.mode(
                    AppColors.lightGreyColor,
                    BlendMode.srcIn,
                  )
                : ColorFilter.mode(
                    index == currentIndex
                        ? AppColors.deepBlueColor
                        : AppColors.lightGreyColor,
                    BlendMode.srcIn,
                  ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            label,
            style: AppFonts.poppinsMedium.copyWith(
              color: index == 2
                  ? AppColors.lavanderGrayColor
                  : index == currentIndex
                      ? AppColors.deepBlueColor
                      : AppColors.lavanderGrayColor,
              fontSize: 11.0,
            ),
          )
        ],
      ),
    );
  }
}
