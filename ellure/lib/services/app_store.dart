import 'package:flutter/material.dart';
import '../models/product.dart';

class AppStore extends ChangeNotifier {

  final List<Product> cart = [];
  final List<Product> favorites = [];

  void addToCart(Product product) {
    cart.add(product);
    notifyListeners();
  }

  void toggleFavorite(Product product) {

    if (favorites.contains(product)) {
      favorites.remove(product);
    } else {
      favorites.add(product);
    }

    notifyListeners();
  }

}