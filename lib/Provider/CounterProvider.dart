import 'package:flutter/foundation.dart';

class CounterProvider with ChangeNotifier {
  int _count = 1;

  int get count => _count;

  set count(int count) => _count = count;

  void addCount() {
    _count++;
    notifyListeners();
  }

  void removeCount() {
    if (_count > 1) {
      _count--;
    }

    notifyListeners();
  }
}
