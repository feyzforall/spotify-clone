import 'package:flutter/material.dart';
import 'package:spotifyclone/const/colors.dart';

ThemeData customTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColors.codGray,
  primaryColor: AppColors.mountainMeadow,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: Colors.white,
  ),
);
