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
            IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_outlined)),
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
        mainAxisExtent: 60,
        crossAxisCount: 2,
      ),
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) {
        return MiniPlaylistCard(index: index);
      },
    );
  }
}

class NewReleaseCard extends StatelessWidget {
  const NewReleaseCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4.0),
      child: Container(
        height: 120,
        child: Row(
          children: [
            Image.asset(
              Assets.placeholder,
              width: 120,
              height: 120,
              fit: BoxFit.fill,
            ),
            const SizedBox(width: 20),
            Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: const ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text('Mr.Morale & The Big Steppers'),
                    subtitle: Text('Kendrick Lamar'),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.favorite),
                      Icon(Icons.play_arrow),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
        decoration: const BoxDecoration(
          color: Colors.black26,
        ),
      ),
    );
  }
}
