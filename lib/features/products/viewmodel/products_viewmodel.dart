import 'package:flutter/material.dart';
import '../../../data/repositories/products_repository.dart';
import '../../../data/models/product_model.dart';
import '../../../data/models/products_response_model.dart';

class ProductsViewModel extends ChangeNotifier {
  final ProductsRepository _productsRepository;
  final String? categorySlug;

  ProductsViewModel(this._productsRepository, {this.categorySlug});

  bool _isLoading = false;
  String? _errorMessage;
  ProductsResponseModel? _productsData;
  List<ProductModel> _products = [];

  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  List<ProductModel> get products => _products;
  bool get isEmpty => _products.isEmpty && !_isLoading;

  Future<void> loadProducts({int page = 1}) async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      _productsData = await _productsRepository.getProducts(
        categorySlug: categorySlug,
        page: page,
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

