import 'package:bloc/bloc.dart';
import 'package:online_app/repositories/course_item_repository/course_item_repository.dart';
import 'package:online_app/screens/favourites_screen/favourites_bloc/favourites_event.dart';
import 'package:online_app/screens/favourites_screen/favourites_bloc/favourites_state.dart';

import '../../../di/service_locator.dart';

class FavouritesBloc extends Bloc<FavouritesEvent, FavouritesState> {
  final _courseItemsRepo = locator<CourseItemRepository>();
  FavouritesBloc() : super(FavouritesState()) {
    on<GetFavouritesCoursesEvent>(_onGetFavourites);
  }

  Future<void> _onGetFavourites(
    GetFavouritesCoursesEvent event,
    Emitter<FavouritesState> emit,
  ) async {
    try {
      final courses = await _courseItemsRepo.getFavourites();

      emit(state.copyWith(favouriteCourses: courses,),);
    } catch (e) {
      rethrow;
    }
  }
}
