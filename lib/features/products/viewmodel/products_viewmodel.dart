import 'package:flutter/material.dart';
import '../../../data/repositories/products_repository.dart';
import '../../../data/models/product_model.dart';
import '../../../data/models/products_response_model.dart';
import '../../../core/services/auth_service.dart';

class ProductsViewModel extends ChangeNotifier {
  final ProductsRepository _productsRepository;
  final AuthService _authService = AuthService();
  final String? categorySlug;
  final String? brandSlug;
  final String? storeSlug;
  final String? searchQuery;

  ProductsViewModel(
    this._productsRepository, {
    this.categorySlug,
    this.brandSlug,
    this.storeSlug,
    this.searchQuery,
  });

  bool _isLoading = false;
  String? _errorMessage;
  ProductsResponseModel? _productsData;
  List<ProductModel> _products = [];

  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  List<ProductModel> get products => _products;
  bool get isEmpty => _products.isEmpty && !_isLoading;

  Future<void> loadProducts({int? page, String? sortBy}) async {
    final userId = _authService.userId;
    final token = _authService.token;

    if (userId == null || token == null) {
      _errorMessage = 'Please login first';
      notifyListeners();
      return;
    }

    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      String? by;
      String? value;

      if (categorySlug != null) {
        by = 'category';
        value = categorySlug;
      } else if (brandSlug != null) {
        by = 'brand';
        value = brandSlug;
      } else if (storeSlug != null) {
        by = 'store';
        value = storeSlug;
      } else if (searchQuery != null) {
        by = 'search';
        value = searchQuery;
      }

      _productsData = await _productsRepository.getProducts(
        id: userId,
        token: token,
        by: by,
        value: value,
        page: page,
        sortBy: sortBy,
      );
      _products = _productsData?.products ?? [];
      _errorMessage = null;
    } catch (e) {
      _errorMessage = 'Failed to load products. Please try again.';
      _products = [];
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> refresh() async {
    await loadProducts();
  }
}

