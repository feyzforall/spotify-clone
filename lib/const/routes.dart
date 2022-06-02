import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:spotifyclone/main_screen.dart';
import 'package:spotifyclone/presentation/pages/library/library_page.dart';
import 'package:spotifyclone/presentation/pages/splash/splash_page.dart';

import '../presentation/pages/home/home_page.dart';
import '../presentation/pages/home/notifications/notifications_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: MainScreen,
      children: [
        AutoRoute(
          path: 'home',
          name: 'HomeRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: HomePage,
            ),
            AutoRoute(
              path: 'notifications',
              page: NotificationsPage,
            ),
          ],
        ),
        AutoRoute(
          path: 'library',
          name: 'LibraryRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: LibraryPage),
          ],
        ),
      ],
    )
  ],
)
class $AppRouter {}
