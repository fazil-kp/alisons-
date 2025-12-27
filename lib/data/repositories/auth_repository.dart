import '../../core/constants/app_constants.dart';
import '../../core/utils/logger.dart';
import '../models/login_response_model.dart';
import '../services/api_service.dart';

class AuthRepository {
  final ApiService _apiService;

  AuthRepository(this._apiService);

  Future<LoginResponseModel> login(String email, String password) async {
    try {
      // Hardcoded validation for now
      if (email == AppConstants.defaultEmail &&
          password == AppConstants.defaultPassword) {
        return const LoginResponseModel(
          success: true,
          token: 'mock_token',
          message: 'Login successful',
        );
      }

      // Try API call if available
      try {
        final response = await _apiService.post(
          AppConstants.loginEndpoint,
          data: {
            'email': email,
            'password': password,
          },
        );

        if (response.statusCode == 200) {
          return LoginResponseModel.fromJson(response.data);
        }
      } catch (e) {
        Logger.d('API login failed, using hardcoded validation');
      }

      // If API fails, return error
      return const LoginResponseModel(
        success: false,
        message: 'Invalid credentials',
      );
    } catch (e) {
      Logger.e('Login error', 'AuthRepository', e);
      return const LoginResponseModel(
        success: false,
        message: 'Login failed. Please try again.',
      );
    }
  }
}

