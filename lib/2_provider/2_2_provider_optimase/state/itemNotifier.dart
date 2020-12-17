import 'package:flutter/material.dart';

class ItemNotifier extends ChangeNotifier {
  int _counter = 0;
  final String itemName;

  ItemNotifier(this.itemName);
  ItemNotifier.withCounter(this.itemName, int counter) {
    _counter = counter;
  }

  int increase() {
    _counter++;
    notifyListeners();
    return _counter;
  }

  int getCounter() {
    return _counter;
  }

  void reset() {
    _counter = 0;
    notifyListeners();
  }
}
