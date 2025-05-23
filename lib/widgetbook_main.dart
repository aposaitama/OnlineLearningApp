import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_app/navigation/cubit/navigation_cubit.dart';
import 'package:online_app/repositories/user_repository/user_repository.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/screens/account_screen/account_bloc/account_bloc.dart';
import 'package:online_app/screens/course_details_screen/widgets/buy_bottom_bar.dart';
import 'package:online_app/screens/course_details_screen/widgets/video_playable_button.dart';
import 'package:online_app/screens/course_screen/widgets/categories_item_tile.dart';
import 'package:online_app/screens/course_screen/widgets/concrete_course_item_tile.dart';
import 'package:online_app/screens/edit_account_screen/widgets/edit_account_text_field.dart';
import 'package:online_app/screens/home_screen/widgets/actions_item_tile.dart';
import 'package:online_app/screens/home_screen/widgets/learning_plan_item_tile.dart';
import 'package:online_app/screens/home_screen/widgets/meetup_widget.dart';
import 'package:online_app/screens/home_screen/widgets/progress_widget_with_bg.dart';
import 'package:online_app/screens/my_courses_screen/widgets/course_item_stat.dart';
import 'package:online_app/widgets/clocking_stat_item_tile.dart';
import 'package:online_app/widgets/custom_bottom_nav_bar.dart';
import 'package:online_app/widgets/custom_filled_button.dart';
import 'package:online_app/widgets/custom_text_field.dart';
import 'package:widgetbook/widgetbook.dart';

import 'gen/assets.gen.dart';

void main() {
  runApp(const WidgetbookApp());
}

class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider(
        //   create: (context) => AccountBloc(
        //   ),
        // ),
        BlocProvider(
          create: (context) => NavigationCubit(),
        ),
      ],
      child: Widgetbook.material(
        addons: [
          DeviceFrameAddon(devices: Devices.ios.all),
          InspectorAddon(),
          GridAddon(100),
          AlignmentAddon(),
          ZoomAddon(),
          ThemeAddon<ThemeData>(
            themes: [
              WidgetbookTheme(
                name: 'Light',
                data: ThemeData.light(),
              ),
              WidgetbookTheme(
                name: 'Dark',
                data: ThemeData.dark(),
              ),
            ],
            themeBuilder: (context, theme, child) {
              return Theme(data: theme, child: child);
            },
          ),
        ],
        directories: [
          WidgetbookFolder(
            name: 'Widgets',
            children: [
              WidgetbookUseCase(
                name: 'BottomBar',
                builder: (context) => const CustomBottomNavBar(),
              ),
              WidgetbookUseCase(
                name: 'Buy Bottom Bar',
                builder: (context) => const BuyBottomBar(
                  courseId: '',
                ),
              ),
              WidgetbookUseCase(
                name: 'Meetup widget',
                builder: (context) => const MeetupWidget(),
              ),
              WidgetbookComponent(
                name: 'TextFields',
                useCases: [
                  WidgetbookUseCase(
                    name: 'TextFieldWithFilters',
                    builder: (context) => const CustomTextField(
                      title: 'title',
                      hint: 'hint',
                    ),
                  ),
                  WidgetbookUseCase(
                    name: 'TextFieldWithFilters',
                    builder: (context) => const EditAccountTextField(),
                  ),
                ],
              ),
              WidgetbookComponent(
                name: 'Buttons',
                useCases: [
                  WidgetbookUseCase(
                    name: 'DefaultButton',
                    builder: (context) =>
                        const CustomFilledButton(buttonTitle: 'Button'),
                  ),
                  WidgetbookUseCase(
                    name: 'InactiveButton',
                    builder: (context) => const CustomFilledButton(
                      buttonTitle: 'buttonTitle',
                      buttonColor: AppColors.darkHintTextColor,
                    ),
                  ),
                  WidgetbookUseCase(
                    name: 'PlayButton',
                    builder: (context) => VideoPlayableButton(
                      imagePath: Assets.icons.polygon,
                      onPlayPressed: () {},
                    ),
                  ),
                ],
              ),
              WidgetbookComponent(
                name: 'Item Tiles',
                useCases: [
                  WidgetbookUseCase(
                    name: 'CourseItemStat Tile',
                    builder: (context) => const SizedBox(
                      width: 200.0,
                      child: CourseItemStat(
                        totalTasksCount: 10,
                        completedTasks: 5,
                        concreteCourseItemTitle: 'Course Title',
                        backgroundColor: AppColors.deepBlueColor,
                      ),
                    ),
                  ),
                  WidgetbookUseCase(
                    name: 'Concrete Course Item tile',
                    builder: (context) => const ConcreteCourseItemTile(
                      concreteCourseTitle: 'Course Title',
                      concreteCourseAuthor: 'Course Author',
                      concreteCoursePrice: 100,
                      concreteCourseDuration: 10000,
                      imageUrl: '/uploads/Doggie_Corgi_e2fc339d5e.jpeg',
                    ),
                  ),
                  WidgetbookUseCase(
                    name: 'Category item tile',
                    builder: (context) => const CategoriesItemTile(
                      backgroundColor: '#F0F4F8',
                      textColor: '#CEECFE',
                      imageUrl: '/uploads/category1_495656e347.png',
                      categoryTitle: 'Education',
                      textBackgroundColor: '#A3A9FF',
                    ),
                  ),
                  WidgetbookUseCase(
                    name: 'Actions item tile',
                    builder: (context) => ActionsItemTile(
                      actionsTitle: "What do you want to learn today ?",
                      actionsImage: Assets.icons.startLearning,
                      actionsButtonTitle: "Get Started",
                      onActionTap: () {},
                    ),
                  ),
                  WidgetbookUseCase(
                    name: 'LearningPlan item tile',
                    builder: (context) => const SizedBox(
                      width: 300.0,
                      child: LearningPlanItemTile(
                        totalTaskCount: 10,
                        completedTaskCount: 5,
                        courseTitle: 'Course title',
                      ),
                    ),
                  ),
                  WidgetbookUseCase(
                    name: 'Clocking item tile',
                    builder: (context) => const ClockingStatItemTile(
                      statTitle: 'Leaned today',
                      statCount: '10',
                      statSystem: ' min',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
