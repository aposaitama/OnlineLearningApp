import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static final SharedPreferencesService _instance =
  SharedPreferencesService._internal();

  factory SharedPreferencesService() => _instance;

  SharedPreferencesService._internal();

  Future<SharedPreferences> _prefs() async =>
      await SharedPreferences.getInstance();

  Future<void> saveUserId(int userId) async {
    final prefs = await _prefs();

    prefs.setInt('user_id', userId,);
  }

  Future<int?> getUserId() async {
    final prefs = await _prefs();

    return prefs.getInt('user_id');
  }
}