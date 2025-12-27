import '../../core/utils/logger.dart';
import '../models/product_model.dart';
import '../models/products_response_model.dart';
import '../services/api_service.dart';

class ProductsRepository {
  final ApiService _apiService;

  ProductsRepository(this._apiService);

  Future<ProductsResponseModel> getProducts({
    required int id,
    required String token,
    String locale = 'en',
    String? by, // category, brand, store, search
    String? value,
    int? page,
    String? sortBy,
  }) async {
    try {
      final queryParams = <String, dynamic>{
        'id': id,
        'token': token,
      };

      if (by != null && value != null) {
        queryParams['by'] = by;
        queryParams['value'] = value;
      }

      if (page != null) {
        queryParams['page'] = page;
      }

      if (sortBy != null) {
        queryParams['sort_by'] = sortBy;
      }

      final response = await _apiService.get(
        '/products/$locale',
        queryParameters: queryParams,
      );

      if (response.statusCode == 200) {
        final data = response.data;
        
        if (data is Map<String, dynamic>) {
          if (data.containsKey('data')) {
            return ProductsResponseModel.fromJson(data['data']);
          }
          return ProductsResponseModel.fromJson(data);
        }
        
        return const ProductsResponseModel();
      }

      throw Exception('Failed to load products');
    } catch (e) {
      Logger.e('Get products error', 'ProductsRepository', e);
      rethrow;
    }
  }

  Future<ProductModel> getProductDetails({
    required String slug,
    required int id,
    required String token,
    String locale = 'en',
    String? store,
  }) async {
    try {
      final queryParams = <String, dynamic>{
        'id': id,
        'token': token,
      };

      if (store != null) {
        queryParams['store'] = store;
      }

      final response = await _apiService.get(
        '/product-details/$locale/$slug',
        queryParameters: queryParams,
      );

      if (response.statusCode == 200) {
        final data = response.data;
        
        if (data is Map<String, dynamic>) {
          if (data.containsKey('data')) {
            return ProductModel.fromJson(data['data']);
          }
          return ProductModel.fromJson(data);
        }
        
        throw Exception('Invalid product data');
      }

      throw Exception('Failed to load product details');
    } catch (e) {
      Logger.e('Get product details error', 'ProductsRepository', e);
      rethrow;
    }
  }
}

