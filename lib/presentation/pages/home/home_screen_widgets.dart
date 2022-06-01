part of 'home_screen.dart';

class HomeHeadline extends StatelessWidget {
  const HomeHeadline({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Good Evening',
          style: Theme.of(context).textTheme.headline6!.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.notifications);
                },
                icon: const Icon(Icons.notifications_outlined)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.history_outlined)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings_outlined)),
          ],
        )
      ],
    );
  }
}

class MiniPlaylistGrid extends StatelessWidget {
  const MiniPlaylistGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: false,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        mainAxisExtent: 55,
        crossAxisCount: 2,
      ),
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) {
        return MiniPlaylistCard(index: index);
      },
    );
  }
}

class HomeListTile extends StatelessWidget {
  const HomeListTile({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        title,
        style: Theme.of(context).textTheme.caption,
      ),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.subtitle1,
      ),
      leading: const CircleAvatar(
        foregroundImage: AssetImage(
          Assets.placeholder,
        ),
      ),
    );
  }
}

class HorizontalAlbumListWithTitle extends StatelessWidget {
  const HorizontalAlbumListWithTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        const AlbumList(),
      ],
    );
  }
}

class HorizontalAlbumListWithWidget extends StatelessWidget {
  const HorizontalAlbumListWithWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title,
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        const AlbumList(),
      ],
    );
  }
}

class AlbumList extends StatelessWidget {
  const AlbumList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.builder(
        itemCount: 7,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: HomeAlbumCard(
              index: index,
            ),
          );
        },
      ),
    );
  }
}
