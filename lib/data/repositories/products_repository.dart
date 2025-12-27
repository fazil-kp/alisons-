import '../../core/constants/app_constants.dart';
import '../../core/utils/logger.dart';
import '../models/product_model.dart';
import '../models/products_response_model.dart';
import '../services/api_service.dart';

class ProductsRepository {
  final ApiService _apiService;

  ProductsRepository(this._apiService);

  Future<ProductsResponseModel> getProducts({
    String? categorySlug,
    int page = 1,
    int perPage = 20,
  }) async {
    try {
      final queryParams = <String, dynamic>{
        'page': page,
        'per_page': perPage,
      };

      if (categorySlug != null) {
        queryParams['by'] = 'category';
        queryParams['value'] = categorySlug;
      }

      final response = await _apiService.get(
        AppConstants.productsEndpoint,
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

  Future<ProductModel> getProductDetails(int productId) async {
    try {
      final response = await _apiService.get(
        AppConstants.productDetailsEndpoint,
        queryParameters: {'id': productId},
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

