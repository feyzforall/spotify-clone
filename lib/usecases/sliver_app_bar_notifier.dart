import 'package:flutter/material.dart';

class SliverNotifier extends ChangeNotifier {
  bool _isVisible = true;

  // ignore: unnecessary_getters_setters
  bool get isVisible => _isVisible;

  void setVisible(bool val) {
    _isVisible = val;
    notifyListeners();
  }
}
