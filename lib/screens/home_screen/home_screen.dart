import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/gen/assets.gen.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/screens/home_screen/bloc/home_screen_bloc/home_screen_bloc.dart';
import 'package:online_app/screens/home_screen/bloc/home_screen_bloc/home_screen_bloc_event.dart';
import 'package:online_app/screens/home_screen/bloc/home_screen_bloc/home_screen_bloc_state.dart';
import 'package:online_app/screens/home_screen/widgets/learning_plan_widget.dart';
import 'package:online_app/screens/home_screen/widgets/meetup_widget.dart';
import 'package:online_app/screens/home_screen/widgets/progress_widget_with_bg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<HomeScreenBloc>().add(const LoadUserHomeScreenBlocEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenBloc, HomeScreenState>(
      builder: (context, state) {
        if (state.loadingStatus == HomeScreenStatus.initial ||
            state.loadingStatus == HomeScreenStatus.loading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.loadingStatus == HomeScreenStatus.error) {
          return const Center(child: Text('Something went wrong 😢'));
        }

        if (state.loadingStatus == HomeScreenStatus.loaded) {
          return Scaffold(
            appBar: AppBar(
              toolbarHeight: 85.0,
              backgroundColor: AppColors.deepBlueColor,
              centerTitle: false,
              title: RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  text: 'Hi, ${state.userInfo?.username} \n',
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
                      Assets.icons.userImage,
                    ),
                  ),
                ),
              ],
            ),
            body: Column(
              children: [
                const ProgressWidgetWithBg(),
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
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 25.0,
                          ),
                          LearningPlanWidget(
                            completedVideos:
                                state.userInfo?.completed_course_videos ?? [],
                            coursesList:
                                state.userInfo?.user_purchased_courses ?? [],
                          ),
                          SizedBox(
                            height: 14.0,
                          ),
                          MeetupWidget(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
