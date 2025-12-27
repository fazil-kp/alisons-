import '../../core/utils/logger.dart';
import '../models/cart_item_model.dart';
import '../services/api_service.dart';

class CartRepository {
  final ApiService _apiService;

  CartRepository(this._apiService);

  Future<List<CartItemModel>> getCart({
    required String id,
    required String token,
    String locale = 'en',
  }) async {
    try {
      final response = await _apiService.get(
        '/cart/$locale',
        queryParameters: {
          'id': id,
          'token': token,
        },
      );

      if (response.statusCode == 200) {
        final data = response.data;
        
        if (data is Map<String, dynamic>) {
          List<CartItemModel> cartItems = [];
          
          // Handle different response structures
          if (data.containsKey('data')) {
            final items = data['data'];
            if (items is List) {
              cartItems = items
                  .map((item) => CartItemModel.fromJson(item))
                  .toList();
            } else if (items is Map && items.containsKey('items')) {
              final itemsList = items['items'];
              if (itemsList is List) {
                cartItems = itemsList
                    .map((item) => CartItemModel.fromJson(item))
                    .toList();
              }
            }
          } else if (data.containsKey('items') && data['items'] is List) {
            cartItems = (data['items'] as List)
                .map((item) => CartItemModel.fromJson(item))
                .toList();
          }
          
          return cartItems;
        }
        
        return [];
      }

      throw Exception('Failed to load cart');
    } catch (e) {
      Logger.e('Get cart error', 'CartRepository', e);
      rethrow;
    }
  }

  Future<bool> addToCart({
    required String id,
    required String token,
    required String slug,
    required int quantity,
    String locale = 'en',
    String? store,
  }) async {
    try {
      final queryParams = <String, dynamic>{
        'id': id,
        'token': token,
        'slug': slug,
        'quantity': quantity,
      };

      if (store != null) {
        queryParams['store'] = store;
      }

      final response = await _apiService.post(
        '/cart/add/$locale',
        queryParameters: queryParams,
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return true;
      }

      throw Exception('Failed to add item to cart');
    } catch (e) {
      Logger.e('Add to cart error', 'CartRepository', e);
      rethrow;
    }
  }
}

