import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'const/routes.gr.dart';
import 'const/theme.dart';
import 'usecases/library_filter_notifier.dart';
import 'usecases/sliver_app_bar_notifier.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: ((context) => SliverNotifier()),
      ),
      ChangeNotifierProvider(
        create: ((context) => LibraryFilterNotifier()),
      )
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Material App',
      theme: customTheme,
      debugShowCheckedModeBanner: false,
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
    );
  }
}
