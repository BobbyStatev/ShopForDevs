import 'dart:collection';
import 'package:flutter/material.dart';

import 'itemNotifier.dart';

class CartViewModel extends ChangeNotifier {
  /// Internal, private state of the cart.
  final Map<String, int> _items = Map<String, int>();

  /// An unmodifiable view of the items in the cart.
  UnmodifiableListView<String> get items => UnmodifiableListView(_items.keys);

  /// The current total count of all items
  int get totalCount => _items.length > 0
      ? _items.values.map((val) => val).reduce((a, b) => a + b)
      : 0;

  /// Adds [item] to cart. This and [removeAll] are the only ways to modify the
  /// cart from the outside.
  void add(ItemNotifier itemNotifier) {
    _items[itemNotifier.itemName] = itemNotifier.increase();
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

  int getCounter(String itemModel) {
    if (_items.containsKey(itemModel)) {
      return _items[itemModel];
    }
    return 0;
  }

  /// Removes all items from the cart.
  void removeAll() {
    _items.clear();
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }
}
