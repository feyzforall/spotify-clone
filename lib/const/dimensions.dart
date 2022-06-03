import 'package:flutter/material.dart';

class Dimensions {
  Dimensions._();

  static const double pagePadding = 12.0;
}

extension DimensionExtension on BuildContext {
  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;

  double get smallWidth => width * 0.1;
  double get mediumWidth => width * 0.2;
  double get largeWidth => width * 0.3;

  double get smallHeight => height * 0.1;
  double get mediumHeight => height * 0.2;
  double get largeHeight => height * 0.3;
}
