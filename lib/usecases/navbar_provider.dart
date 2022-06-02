import 'package:flutter/material.dart';

class NavbarNotifier extends ChangeNotifier {
  int _currentIndex = 0;

  // ignore: unnecessary_getters_setters
  int get currentIndex => _currentIndex;

  set currentIndex(int index) => _currentIndex = index;
}
