import 'package:flutter/material.dart';

import 'colors.dart';

OutlineInputBorder _customBorder = const OutlineInputBorder(
  borderSide: BorderSide(
    color: AppColors.codGray,
  ),
);

ThemeData customTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColors.codGray,
  primaryColor: AppColors.mountainMeadow,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: Colors.white,
  ),
  inputDecorationTheme: InputDecorationTheme(
    contentPadding: const EdgeInsets.all(8.0),
    border: _customBorder,
    errorBorder: _customBorder,
    enabledBorder: _customBorder,
    disabledBorder: _customBorder,
    focusedBorder: _customBorder,
    fillColor: Colors.white,
    prefixIconColor: AppColors.codGray,
    filled: true,
    hintStyle: const TextStyle(
      color: AppColors.codGray,
    ),
  ),
);
