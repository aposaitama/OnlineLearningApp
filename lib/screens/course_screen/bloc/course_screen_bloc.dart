import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_app/di/service_locator.dart';
import 'package:online_app/models/categories_model/categories_model.dart';
import 'package:online_app/repositories/category_repository/category_repository.dart';
import 'package:online_app/screens/course_screen/bloc/course_screen_event.dart';
import 'package:online_app/screens/course_screen/bloc/course_screen_state.dart';
import 'package:online_app/sources/strapi_api_service/strapi_api_service.dart';

class CourseScreenBloc extends Bloc<CourseScreenEvent, CourseScreenState> {
  final strapiApiService = locator<StrapiApiService>();
  final CategoryRepository categoryRepository;

  CourseScreenBloc({
    required this.categoryRepository,
  }) : super(const CourseScreenState()) {
    on<LoadCourseBasicInfoEvent>(_loadCourseList);
    on<GetSearchedByTextCoursesEvent>(_getSearchedCourses);
    on<EnterTextOnCourseScreenEvent>(_onEnterText);
    on<GetCategoriesOnCoursesEvent>(_onGetCategories);
  }

  Future<void> _loadCourseList(
    LoadCourseBasicInfoEvent event,
    Emitter<CourseScreenState> emit,
  ) async {
    final courseItems = await strapiApiService.fetchCourseItems();
    final courseCategories = await strapiApiService.fetchCategoriesItems();
    emit(
      state.copyWith(
          loadingStatus: CourseScreenStatus.loaded,
          courseList: courseItems,
          categoriesList: courseCategories),
    );
  }

  Future<void> _getSearchedCourses(
    GetSearchedByTextCoursesEvent event,
    Emitter<CourseScreenState> emit,
  ) async {
    try {
      final searchedCourses = await strapiApiService.searchCoursesByText(
        enteredText: state.enteredText,
      );

      emit(
        state.copyWith(
          loadingStatus: CourseScreenStatus.loaded,
          courseList: searchedCourses,
        ),
      );
    } catch (e) {
      rethrow;
    }
  }

  void _onEnterText(
    EnterTextOnCourseScreenEvent event,
    Emitter<CourseScreenState> emit,
  ) {
    emit(
      state.copyWith(
        enteredText: event.enteredText,
      ),
    );
  }

  Future<void> _onGetCategories(
    GetCategoriesOnCoursesEvent event,
    Emitter<CourseScreenState> emit,
  ) async {
    try {
      final List<CategoriesModel> categories =
          await categoryRepository.getCategories();

      emit(
        state.copyWith(
          categories: categories,
        ),
      );
    } catch (e) {
      rethrow;
    }
  }
}
