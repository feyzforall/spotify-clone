// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i6;

import '../main_screen.dart' as _i1;
import '../presentation/pages/home/home_page.dart' as _i3;
import '../presentation/pages/home/notifications/notifications_screen.dart'
    as _i4;
import '../presentation/pages/library/library_page.dart' as _i5;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    MainScreen.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MainScreen());
    },
    HomeRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    LibraryRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    HomeRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomePage());
    },
    NotificationsRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.NotificationsPage());
    },
    LibraryRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.LibraryPage());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(MainScreen.name, path: '/', children: [
          _i2.RouteConfig(HomeRouter.name,
              path: 'home',
              parent: MainScreen.name,
              children: [
                _i2.RouteConfig(HomeRoute.name,
                    path: '', parent: HomeRouter.name),
                _i2.RouteConfig(NotificationsRoute.name,
                    path: 'notifications', parent: HomeRouter.name)
              ]),
          _i2.RouteConfig(LibraryRouter.name,
              path: 'library',
              parent: MainScreen.name,
              children: [
                _i2.RouteConfig(LibraryRoute.name,
                    path: '', parent: LibraryRouter.name)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.MainScreen]
class MainScreen extends _i2.PageRouteInfo<void> {
  const MainScreen({List<_i2.PageRouteInfo>? children})
      : super(MainScreen.name, path: '/', initialChildren: children);

  static const String name = 'MainScreen';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class HomeRouter extends _i2.PageRouteInfo<void> {
  const HomeRouter({List<_i2.PageRouteInfo>? children})
      : super(HomeRouter.name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class LibraryRouter extends _i2.PageRouteInfo<void> {
  const LibraryRouter({List<_i2.PageRouteInfo>? children})
      : super(LibraryRouter.name, path: 'library', initialChildren: children);

  static const String name = 'LibraryRouter';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.NotificationsPage]
class NotificationsRoute extends _i2.PageRouteInfo<void> {
  const NotificationsRoute()
      : super(NotificationsRoute.name, path: 'notifications');

  static const String name = 'NotificationsRoute';
}

/// generated route for
/// [_i5.LibraryPage]
class LibraryRoute extends _i2.PageRouteInfo<void> {
  const LibraryRoute() : super(LibraryRoute.name, path: '');

  static const String name = 'LibraryRoute';
}
