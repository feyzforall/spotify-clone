import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotifyclone/const/assets.dart';
import 'package:spotifyclone/const/colors.dart';
import 'package:spotifyclone/const/dimensions.dart';
import 'package:spotifyclone/main_screen.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return MainScreen(
      body: CupertinoPageScaffold(
        backgroundColor: AppColors.codGray,
        child: CustomScrollView(
          slivers: <Widget>[
            CupertinoSliverNavigationBar(
              backgroundColor: AppColors.codGray,
              leading: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Icon(
                  CupertinoIcons.back,
                  size: 22,
                ),
              ),
              largeTitle: const Text(
                "What's New",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: Dimensions.pagePadding,
                child: Text(
                  'The latest releases from artists, podcasts and shows you follow.',
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                List.generate(
                  100,
                  (index) => Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Column(
                      children: [
                        NotificationCard(),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Divider(),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          isThreeLine: true,
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(4.0),
            child: Image.asset(
              Assets.placeholder,
              width: 70,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          title: Text(
            '6 days ago',
            style: Theme.of(context).textTheme.caption,
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '30. The Subway',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              const SizedBox(height: 5),
              Text(
                'Derin Seinfeld',
                style: Theme.of(context).textTheme.caption,
              ),
            ],
          ),
        ),
        Text('Episode - 35 min'),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.add_circle_outline),
                SizedBox(width: 15),
                Icon(Icons.download_for_offline_rounded),
                SizedBox(width: 15),
                Icon(Icons.more_horiz_outlined),
              ],
            ),
            Icon(Icons.play_circle_fill_outlined)
          ],
        )
      ],
    );
  }
}
