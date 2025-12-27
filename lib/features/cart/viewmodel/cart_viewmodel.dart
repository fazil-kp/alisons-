import 'package:flutter/material.dart';
import '../../../data/models/product_model.dart';
import '../../../data/models/cart_item_model.dart';

class CartViewModel extends ChangeNotifier {
  final List<CartItemModel> _items = [];

  List<CartItemModel> get items => List.unmodifiable(_items);

  int get itemCount => _items.fold(0, (sum, item) => sum + item.quantity);

  double get totalPrice {
    return _items.fold(0.0, (sum, item) {
      return sum + (item.product.currentPrice * item.quantity);
    });
  }

  bool get isEmpty => _items.isEmpty;

  void addToCart(ProductModel product, {int quantity = 1}) {
    print('CartViewModel.addToCart - Product ID: ${product.id}, Name: ${product.name}, Quantity to add: $quantity');
    final existingIndex = _items.indexWhere((item) => item.product.id == product.id);
    print('CartViewModel.addToCart - Existing index: $existingIndex, Current items count: ${_items.length}');

    if (existingIndex >= 0) {
      final newQuantity = _items[existingIndex].quantity + quantity;
      _items[existingIndex] = CartItemModel(product: product, quantity: newQuantity);
      print('CartViewModel.addToCart - Updated existing item, new quantity: $newQuantity');
    } else {
      _items.add(CartItemModel(product: product, quantity: quantity));
      print('CartViewModel.addToCart - Added new item with quantity: $quantity');
    }

    print('CartViewModel.addToCart - Total items after add: ${_items.length}');
    notifyListeners();
  }

  void removeFromCart(int productId) {
    _items.removeWhere((item) => item.product.id == productId);
    notifyListeners();
  }

  void updateQuantity(int productId, int quantity) {
    if (quantity <= 0) {
      removeFromCart(productId);
      return;
    }

    final index = _items.indexWhere((item) => item.product.id == productId);
    if (index >= 0) {
      _items[index] = CartItemModel(product: _items[index].product, quantity: quantity);
      notifyListeners();
    }
  }

  void incrementQuantity(int productId) {
    print('CartViewModel.incrementQuantity - Product ID: $productId');
    final index = _items.indexWhere((item) => item.product.id == productId);
    print('CartViewModel.incrementQuantity - Found at index: $index');
    if (index >= 0) {
      updateQuantity(productId, _items[index].quantity + 1);
    } else {
      print('CartViewModel.incrementQuantity - Product not found in cart!');
    }
  }

  void decrementQuantity(int productId) {
    print('CartViewModel.decrementQuantity - Product ID: $productId');
    final index = _items.indexWhere((item) => item.product.id == productId);
    print('CartViewModel.decrementQuantity - Found at index: $index');
    if (index >= 0) {
      updateQuantity(productId, _items[index].quantity - 1);
    } else {
      print('CartViewModel.decrementQuantity - Product not found in cart!');
    }
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }

  bool isInCart(int productId) {
    return _items.any((item) => item.product.id == productId);
  }

  int getQuantity(int productId) {
    final item = _items.firstWhere(
      (item) => item.product.id == productId,
      orElse: () => const CartItemModel(product: ProductModel(id: 0, name: '', currentPrice: 0), quantity: 0),
    );
    return item.quantity;
  }
}
