import 'package:dio/dio.dart';
import 'package:online_app/di/service_locator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository {
  final SharedPreferences prefs = locator<SharedPreferences>();
  final Dio _dio = locator<Dio>();

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

  Future<void> saveUserId(int userId) async {

    await prefs.setInt('user_id', userId,);

  }

  Future<int?> getUserId() async {

    return prefs.getInt('user_id');
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

      await saveUserId(userId);
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

      await saveUserId(userId);
      await saveToken(token);
      return token;
    } on DioException catch (e) {
      final message = e.response?.data['error']['message'] ?? 'Unknown error';
      throw 'Login failed: $message';
    } catch (e) {
      throw 'Login failed';
    }
  }
}
