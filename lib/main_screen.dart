import 'package:flutter/material.dart';
import 'package:spotifyclone/const/colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key, required this.body}) : super(key: key);

  final Widget body;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.body,
      backgroundColor: AppColors.codGray,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search_outlined), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.library_music_outlined), label: 'Library'),
        ],
      ),
    );
  }
}
