import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

import 'sliver_app_bar_notifier.dart';

void sliverController(Object? notification, BuildContext context) {
  if (notification is UserScrollNotification) {
    final ScrollDirection scrollDirection = notification.direction;
    if (scrollDirection == ScrollDirection.forward) {
      Provider.of<SliverNotifier>(context, listen: false).setVisible(true);
    } else if (scrollDirection == ScrollDirection.reverse) {
      Provider.of<SliverNotifier>(context, listen: false).setVisible(false);
    } else {
      Provider.of<SliverNotifier>(context, listen: false).setVisible(
        Provider.of<SliverNotifier>(context, listen: false).isVisible,
      );
    }
  }
}
