import 'package:dio/dio.dart';
import 'package:online_app/di/service_locator.dart';
import 'package:online_app/services/shared_preferences_service/shared_preferences_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository {
  final SharedPreferences prefs = locator<SharedPreferences>();
  final Dio _dio = locator<Dio>();
  final _sharedPreferencesService = locator<SharedPreferencesService>();

  Future<void> saveToken(String token) async {
    await prefs.setString('jwt_token', token);
  }

  //delete token when logout
  Future<void> removeToken() async {
    await prefs.remove('jwt_token');
  }

  //get jwt-token
  Future<String?> getToken() async {
    return prefs.getString('jwt_token');
  }


  Future<String> register(
    String userName,
    String email,
    String password,
  ) async {
    try {
      final response = await _dio.post(
        '/auth/local/register',
        data: {
          'username': userName,
          'email': email,
          'password': password,
        },
      );
      final token = response.data['jwt'];
      final userId = response.data['user']['id'];

      await _sharedPreferencesService.saveUserId(userId);
      await saveToken(token);

      return token;
    } on DioException catch (e) {
      final message = e.response?.data['error']['message'] ?? 'Unknown error';
      throw 'Register failed: $message';
    } catch (e) {
      throw 'Register failed';
    }
  }

  Future<String> login(String email, String password) async {
    try {
      final response = await _dio.post(
        '/auth/local',
        data: {'identifier': email, 'password': password},
      );

      final token = response.data['jwt'];
      final userId = response.data['user']['id'];

      await _sharedPreferencesService.saveUserId(userId);
      await saveToken(token);
      return token;
    } on DioException catch (e) {
      final message = e.response?.data['error']['message'] ?? 'Unknown error';
      throw 'Login failed: $message';
    } catch (e) {
      throw 'Login failed';
    }
  }

  Future<void> logout() async {
    try {
      await removeToken();
    } catch (e) {}
  }
}
