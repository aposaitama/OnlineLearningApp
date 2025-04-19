import 'package:get_it/get_it.dart';
import 'package:online_app/sources/strapi_api_service/strapi_api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  locator.registerSingleton<SharedPreferences>(prefs);
  locator.registerSingleton<StrapiApiService>(StrapiApiService());
}
