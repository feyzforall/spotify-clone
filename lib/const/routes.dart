import 'package:flutter/material.dart';

import '../presentation/pages/home/home_screen.dart';
import '../presentation/pages/home/notifications/notifications_screen.dart';

class Routes {
  static const String homeRoute = '/';
  static const String notifications = '/secondScreen';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case notifications:
        return MaterialPageRoute(builder: (_) => const NotificationsScreen());
      default:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
    }
  }
}
