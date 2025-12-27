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
          // Extract id and token from customerdata
          String? id;
          String? token;
          Map<String, dynamic>? customerdata;
          
          if (data['customerdata'] is Map<String, dynamic>) {
            customerdata = data['customerdata'] as Map<String, dynamic>;
            id = customerdata['id']?.toString();
            token = customerdata['token']?.toString();
          }
          
          // Convert success from int to bool (1 = true, 0 = false)
          final successValue = data['success'];
          final bool success = successValue == 1 || successValue == true;
          
          // Create the model with extracted values
          return LoginResponseModel(
            id: id,
            token: token,
            customerdata: customerdata,
            message: data['message']?.toString(),
            success: success,
          );
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

