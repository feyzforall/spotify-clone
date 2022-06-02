part of 'notifications_screen.dart';

class SliverNavBar extends StatelessWidget {
  const SliverNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoSliverNavigationBar(
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
    );
  }
}

class NotificationHeader extends StatelessWidget {
  const NotificationHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Padding(
        padding: Dimensions.pagePadding,
        child: Text(
          'The latest releases from artists, podcasts and shows you follow.',
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}

class NotificationsList extends StatelessWidget {
  const NotificationsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        List.generate(
          15,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              children: [
                const NotificationCard(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                const Divider(),
              ],
            ),
          ),
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
                playlists[0].title,
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
              children: const [
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
