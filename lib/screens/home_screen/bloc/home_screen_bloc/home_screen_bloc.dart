import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    emit(
      state.copyWith(
        loadingStatus: HomeScreenStatus.loaded,
        userInfo: userInfoModel,
      ),
    );
  }
}
