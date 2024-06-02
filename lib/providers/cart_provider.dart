// cart_provider.dart
import 'package:flutter/material.dart';
import 'package:store/models/cart_model.dart';

class CartProvider with ChangeNotifier {
  final List<CartItem> _cartItems = [];

  List<CartItem> get cartItems => _cartItems;

  get total => 0;

  void addToCart(product) {
    _cartItems.add(product as CartItem);
    notifyListeners();
  }

  void removeFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  void clearCart() {
    _cartItems.clear();
    notifyListeners();
  }

  double getTotalPrice() {
    double total = 0.0;
    for (final product in _cartItems) {
      total += product.price;
    }
    return total;
  }
}

// class CartProvider with ChangeNotifier {
//   final List<Product> _products = [];

//   List<Product> get products => _products;

//   void addProduct(Product product) {
//     _products.add(product);
//     notifyListeners();
//   }

//   void removeProduct(Product product) {
//     _products.remove(product);
//     notifyListeners();
//   }


