import '../../core/constants/app_constants.dart';
import '../../core/utils/logger.dart';
import '../models/login_response_model.dart';
import '../services/api_service.dart';

class AuthRepository {
  final ApiService _apiService;

  AuthRepository(this._apiService);

  Future<LoginResponseModel> login(String emailPhone, String password) async {
    try {
      final response = await _apiService.post(
        AppConstants.loginEndpoint,
        data: {
          'email_phone': emailPhone,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        final data = response.data;
        if (data is Map<String, dynamic>) {
          return LoginResponseModel.fromJson(data);
        }
        throw Exception('Invalid response format');
      }

      throw Exception('Login failed with status code: ${response.statusCode}');
    } catch (e) {
      Logger.e('Login error', 'AuthRepository', e);
      rethrow;
    }
  }
}

