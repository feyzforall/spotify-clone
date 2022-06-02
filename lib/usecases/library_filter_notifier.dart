import 'package:flutter/material.dart';

class LibraryFilterNotifier extends ChangeNotifier {
  bool _isGrid = false;

  bool get isGrid => _isGrid;

  void toggleGrid() {
    _isGrid = !_isGrid;
    notifyListeners();
  }
}
