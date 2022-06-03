import 'package:auto_route/auto_route.dart';

import '../main_screen.dart';
import '../presentation/pages/home/home_page.dart';
import '../presentation/pages/home/notifications/notifications_screen.dart';
import '../presentation/pages/library/library_page.dart';
import '../presentation/pages/search/search_page.dart';

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
            AutoRoute(
              path: '',
              page: LibraryPage,
            ),
          ],
        ),
        AutoRoute(
          path: 'search',
          name: 'SearchRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: SearchPage,
            ),
          ],
        ),
      ],
    )
  ],
)
class $AppRouter {}
