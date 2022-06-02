import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spotifyclone/const/colors.dart';
import 'package:spotifyclone/const/routes.gr.dart';

import 'const/routes.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      backgroundColor: AppColors.codGray,
      bottomNavigationBuilder: (_, router) {
        return BottomNavigationBar(
          backgroundColor: Colors.transparent,
          onTap: (int index) => router.setActiveIndex(index),
          elevation: 0,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search_outlined), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.library_music_outlined), label: 'Library'),
          ],
        );
      },
      routes: const [
        HomeRouter(),
        SearchRouter(),
        LibraryRouter(),
      ],
    );
  }
}
