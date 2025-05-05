import 'package:get_it/get_it.dart';
import 'package:online_app/repositories/auth_repository/auth_repository.dart';
import 'package:online_app/repositories/category_repository/category_repository.dart';
import 'package:online_app/repositories/course_repository/course_repository.dart';
import 'package:online_app/repositories/payment_repository/payment_repository.dart';
import 'package:online_app/repositories/user_repository/user_repository.dart';
import 'package:online_app/sources/strapi_api_service/strapi_api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  locator.registerSingleton<SharedPreferences>(prefs);
  locator.registerSingleton<AuthRepository>(AuthRepository());
  locator.registerSingleton<UserRepository>(UserRepository());
  locator.registerSingleton<StrapiApiService>(StrapiApiService());
  locator.registerSingleton<PaymentRepository>(PaymentRepository());
  locator.registerSingleton<CourseRepository>(CourseRepository());
  locator.registerSingleton<CategoryRepository>(CategoryRepository());
}
