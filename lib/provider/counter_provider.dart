import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int _count = 0;

  get count => _count;

  arttir() {
    _count++;
    notifyListeners();
  }

  azalt() {
    _count--;
    notifyListeners();
  }
}
