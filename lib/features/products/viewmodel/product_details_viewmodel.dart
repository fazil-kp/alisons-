import 'package:flutter/material.dart';
import '../../../data/repositories/products_repository.dart';
import '../../../data/models/product_model.dart';
import '../../../core/services/auth_service.dart';

class ProductDetailsViewModel extends ChangeNotifier {
  final ProductsRepository _productsRepository;
  final AuthService _authService = AuthService();
  final String slug;
  final String? store;

  ProductDetailsViewModel(
    this._productsRepository,
    this.slug, {
    this.store,
  });

  bool _isLoading = false;
  String? _errorMessage;
  ProductModel? _product;

  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  ProductModel? get product => _product;

  Future<void> loadProductDetails() async {
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
      _product = await _productsRepository.getProductDetails(
        slug: slug,
        id: userId,
        token: token,
        store: store,
      );
      _errorMessage = null;
    } catch (e) {
      _errorMessage = 'Failed to load product details. Please try again.';
      _product = null;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}

