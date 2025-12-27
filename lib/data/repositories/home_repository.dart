import '../../core/utils/logger.dart';
import '../models/home_response_model.dart';
import '../services/api_service.dart';

class HomeRepository {
  final ApiService _apiService;

  HomeRepository(this._apiService);

  Future<HomeResponseModel> getHomeData({
    required String id,
    required String token,
    String locale = 'en',
  }) async {
    try {
      final response = await _apiService.post(
        '/home/$locale',
        queryParameters: {
          'id': id,
          'token': token,
        },
      );

      if (response.statusCode == 200) {
        final data = response.data;
        
        // Handle different response structures
        if (data is Map<String, dynamic>) {
          if (data.containsKey('data')) {
            return HomeResponseModel.fromJson(data['data']);
          }
          return HomeResponseModel.fromJson(data);
        }
        
        return const HomeResponseModel();
      }

      throw Exception('Failed to load home data');
    } catch (e) {
      Logger.e('Get home data error', 'HomeRepository', e);
      rethrow;
    }
  }
}

