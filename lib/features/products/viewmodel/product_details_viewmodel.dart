import 'package:flutter/material.dart';
import '../../../data/repositories/products_repository.dart';
import '../../../data/models/product_model.dart';

class ProductDetailsViewModel extends ChangeNotifier {
  final ProductsRepository _productsRepository;
  final int productId;

  ProductDetailsViewModel(this._productsRepository, this.productId);

  bool _isLoading = false;
  String? _errorMessage;
  ProductModel? _product;

  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  ProductModel? get product => _product;

  Future<void> loadProductDetails() async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      _product = await _productsRepository.getProductDetails(productId);
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

