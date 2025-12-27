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
            final responseData = data['data'] as Map<String, dynamic>;

            // Handle categories with wrapper structure
            if (responseData.containsKey('categories') && responseData['categories'] is List) {
              final categories = responseData['categories'] as List;
              final processedCategories = categories.map((item) {
                if (item is Map<String, dynamic> && item.containsKey('category')) {
                  return item['category'] as Map<String, dynamic>;
                }
                return item as Map<String, dynamic>;
              }).toList();

              // Update the response data with processed categories
              responseData['categories'] = processedCategories;
            }

            return HomeResponseModel.fromJson(responseData);
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

