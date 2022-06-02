import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spotifyclone/const/routes.gr.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Spotify'),
    );
  }
}
