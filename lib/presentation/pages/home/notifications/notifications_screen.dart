import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../const/assets.dart';
import '../../../../const/colors.dart';
import '../../../../const/dimensions.dart';
import '../../../../entities/playlist.dart';

part 'notifications_screen_widgets.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      backgroundColor: AppColors.codGray,
      child: CustomScrollView(
        slivers: <Widget>[SliverNavBar(), NotificationHeader(), NotificationsList()],
      ),
    );
  }
}
