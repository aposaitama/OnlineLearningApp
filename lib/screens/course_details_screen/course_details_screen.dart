import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/screens/course_details_screen/bloc/course_details_bloc.dart';
import 'package:online_app/screens/course_details_screen/bloc/course_details_event.dart';
import 'package:online_app/screens/course_details_screen/bloc/course_details_state.dart';

class CourseDetailsScreen extends StatefulWidget {
  final String courseId;
  const CourseDetailsScreen({
    super.key,
    required this.courseId,
  });

  @override
  State<CourseDetailsScreen> createState() => _CourseDetailsScreenState();
}

class _CourseDetailsScreenState extends State<CourseDetailsScreen> {
  @override
  void initState() {
    context.read<CourseDetailsBloc>().add(
          LoadConcreteCourseInfoEvent(
            widget.courseId,
          ),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double imageHeight = MediaQuery.of(context).size.height / 3;
    final double height = MediaQuery.of(context).size.height;
    return BlocBuilder<CourseDetailsBloc, CourseDetailsState>(
      builder: (context, state) {
        if (state.loadingStatus == CourseDetailsLoadingStatus.loaded) {
          final course = state.course;
          return Scaffold(
              body: Stack(
            alignment: Alignment.topCenter,
            children: [
              course != null
                  ? SizedBox(
                      width: double.infinity,
                      height: imageHeight,
                      child: Image.network(
                        fit: BoxFit.cover,
                        'http://localhost:1337${course.courseImage.url}',
                      ),
                    )
                  : Container(),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: imageHeight - 22,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context)
                            .extension<AppColorsModel>()!
                            .onSurface,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(
                            25.0,
                          ),
                          topRight: Radius.circular(
                            25.0,
                          ),
                        ),
                      ),
                      height: height - imageHeight + 22,
                      width: double.infinity,
                    ),
                  ),
                ],
              )
            ],
          )
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     course != null
              //         ? SizedBox(
              //             height: 300.0,
              //             child: Image.network(
              //               fit: BoxFit.cover,
              //               'http://localhost:1337${course.courseImage.url}',
              //             ),
              //           )
              //         : Container(),
              //     Column(
              //       children: [
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             Text(
              //               course?.courseTitle ?? '',
              //               style: AppFonts.poppinsBold.copyWith(
              //                 color: Theme.of(context)
              //                     .extension<AppColorsModel>()!
              //                     .mainTextColor,
              //                 fontSize: 20.0,
              //                 height: 2.0,
              //               ),
              //             ),
              //             Text(
              //               '\$${course?.coursePrice.toString() ?? '0.0'}',
              //               style: AppFonts.poppinsBold.copyWith(
              //                 color: AppColors.deepBlueColor,
              //                 fontSize: 20.0,
              //                 height: 2.0,
              //               ),
              //             )
              //           ],
              //         )
              //       ],
              //     ),
              //     Row(
              //       children: [
              //         Text(
              //           '6h 14min',
              //           style: AppFonts.poppinsRegular.copyWith(
              //             color: Theme.of(context)
              //                 .extension<AppColorsModel>()!
              //                 .hintTextColor,
              //             fontSize: 12.0,
              //           ),
              //         ),
              //         const SizedBox(
              //           width: 10.0,
              //         ),
              //         Text(
              //           '${course?.courseVideoItems.length.toString() ?? ''} Lessons',
              //           style: AppFonts.poppinsRegular.copyWith(
              //             color: Theme.of(context)
              //                 .extension<AppColorsModel>()!
              //                 .hintTextColor,
              //             fontSize: 12.0,
              //           ),
              //         ),
              //       ],
              //     ),
              //     Text(
              //       'About this course',
              //       style: AppFonts.poppinsBold.copyWith(
              //         color: Theme.of(context)
              //             .extension<AppColorsModel>()!
              //             .mainTextColor,
              //         fontSize: 16.0,
              //         height: 2.0,
              //       ),
              //     ),
              //     Text(
              //       course?.courseDescription ?? '',
              //       style: AppFonts.poppinsRegular.copyWith(
              //         color: Theme.of(context)
              //             .extension<AppColorsModel>()!
              //             .hintTextColor,
              //         fontSize: 12.0,
              //       ),
              //     ),
              //   ],
              // ),

              );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
