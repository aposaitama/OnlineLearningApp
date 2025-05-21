import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:online_app/di/service_locator.dart';
import 'package:online_app/models/local_notification_model/local_notification_model.dart';
import 'package:online_app/repositories/user_repository/user_repository.dart';
import 'package:online_app/screens/home_screen/bloc/home_screen_bloc/home_screen_bloc_event.dart';
import 'package:online_app/screens/home_screen/bloc/home_screen_bloc/home_screen_bloc_state.dart';
import 'package:online_app/services/local_notifications_service/local_notifications_service.dart';

import 'package:online_app/services/strapi_api_service/strapi_api_service.dart';

import '../../../../repositories/course_item_repository/course_item_repository.dart';

class HomeScreenBloc extends Bloc<HomeScreenBlocEvent, HomeScreenState> {
  final strapiApiService = locator<StrapiApiService>();
  final userRepo = locator<UserRepository>();
  final _courseRepo = locator<CourseItemRepository>();
  final _notificationService = locator<LocalNotificationsService>();

  HomeScreenBloc() : super(const HomeScreenState()) {
    on<LoadUserHomeScreenBlocEvent>(_loadUserData);
    on<GetCourseIdsEvent>(_onGetCourseIds);
    on<CheckCourseIdsEvent>(_onCheckCourseIds);
  }

  Future<void> _loadUserData(
    LoadUserHomeScreenBlocEvent event,
    Emitter<HomeScreenState> emit,
  ) async {
    emit(
      state.copyWith(
        loadingStatus: HomeScreenStatus.loading,
      ),
    );
    final userInfoModel = await userRepo.getUserData();
    if (userInfoModel != null) {
      final now = DateTime.now();
      final today = DateTime(now.year, now.month, now.day);
      final daybefore = DateTime(now.year, now.month, now.day - 1);
      final last = userInfoModel.lastTimeCheckout != null
          ? DateTime(
              userInfoModel.lastTimeCheckout!.year,
              userInfoModel.lastTimeCheckout!.month,
              userInfoModel.lastTimeCheckout!.day,
            )
          : null;
      final userCheckoutCurrentStreak = userInfoModel.userLearningStreak;
      userInfoModel.lastTimeCheckout != null
          ? today == last
              ? null
              : daybefore == last
                  ? await userRepo.updateUserStatInfo(
                      lastTimeCheckout: DateTime.now(),
                      totallyLearningDays:
                          userInfoModel.totallyLearningDays + 1,
                      learnedToday: 0.0,
                      userCurrentStreak: userCheckoutCurrentStreak + 1,
                    )
                  : await userRepo.updateUserStatInfo(
                      lastTimeCheckout: DateTime.now(),
                      totallyLearningDays:
                          userInfoModel.totallyLearningDays + 1,
                      learnedToday: 0.0,
                      userCurrentStreak: 1,
                    )
          : await userRepo.updateUserStatInfo(
              lastTimeCheckout: DateTime.now(),
              totallyLearningDays: 1,
            );
    }
    final userInfoChangedModel = await userRepo.getUserData();
    emit(
      state.copyWith(
        loadingStatus: HomeScreenStatus.loaded,
        userInfo: userInfoChangedModel,
      ),
    );
  }

  Future<void> _onGetCourseIds(
    GetCourseIdsEvent event,
    Emitter<HomeScreenState> emit,
  ) async {
    final List<int> ids = await _courseRepo.getCoursesIds();

    emit(
      state.copyWith(
        courseIds: ids,
      ),
    );
  }

  Future<void> _onCheckCourseIds(
    CheckCourseIdsEvent event,
    Emitter<HomeScreenState> emit,
  ) async {
    final List<int> ids = await _courseRepo.getCoursesIds();

    if (state.courseIds.length != ids.length) {
      final int id = DateTime.now().millisecondsSinceEpoch.remainder(10000);
      await _notificationService.showNotification(
        id: id,
        title: 'Update!',
        body: 'New courses were introduced',
        notificationType: NotificationType.info,
      );

      emit(
        state.copyWith(
          courseIds: ids,
        ),
      );
    }
  }
}
