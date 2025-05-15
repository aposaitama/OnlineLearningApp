import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:online_app/di/service_locator.dart';
import 'package:online_app/repositories/user_repository/user_repository.dart';
import 'package:online_app/screens/home_screen/bloc/home_screen_bloc/home_screen_bloc_event.dart';
import 'package:online_app/screens/home_screen/bloc/home_screen_bloc/home_screen_bloc_state.dart';

import 'package:online_app/services/strapi_api_service/strapi_api_service.dart';

class HomeScreenBloc extends Bloc<HomeScreenBlocEvent, HomeScreenState> {
  final strapiApiService = locator<StrapiApiService>();
  final userRepo = locator<UserRepository>();
  HomeScreenBloc() : super(const HomeScreenState()) {
    on<LoadUserHomeScreenBlocEvent>(_loadUserData);
  }

  Future<void> _loadUserData(
    LoadUserHomeScreenBlocEvent event,
    Emitter<HomeScreenState> emit,
  ) async {
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
}
