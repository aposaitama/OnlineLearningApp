import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_app/navigation/cubit/navigation_cubit.dart';
import 'package:online_app/repositories/user_repository/user_repository.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/screens/account_screen/account_bloc/account_bloc.dart';
import 'package:online_app/screens/course_details_screen/widgets/video_playable_button.dart';
import 'package:online_app/screens/edit_account_screen/widgets/edit_account_text_field.dart';
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
                  builder: (context) => const CustomBottomNavBar()),
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
            ],
          ),
        ],
      ),
    );
  }
}
