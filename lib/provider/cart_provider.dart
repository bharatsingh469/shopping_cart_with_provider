// git link ->  https://github.com/swkhan-dev/shopping-cart-provider/blob/main/lib/screen/widget.dart
// https://www.youtube.com/watch?v=XCmJagNPbi4

import 'dart:collection';
import 'dart:developer';

import 'package:cart_app_with_provider/item_model.dart';
import 'package:flutter/material.dart';


class CartProvider extends ChangeNotifier {
  final List<Item> _cartItems = [];

  UnmodifiableListView get cartItems => UnmodifiableListView(_cartItems);

  double get price => _cartItems.fold<double>(
      0.0, (previousValue, element) => previousValue += element.price);

  // Add Item
  void addItem(Item item) {
    _cartItems.add(item);
    notifyListeners();
    log("Item Added");
  }

  // Reset Cart
  void reset() {
    _cartItems.clear();
    notifyListeners();
    log("Item list reset");
  }
}
