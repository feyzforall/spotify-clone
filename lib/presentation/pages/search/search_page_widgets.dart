part of 'search_page.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      centerTitle: false,
      pinned: true,
      toolbarHeight: 90,
      expandedHeight: 150,
      flexibleSpace: const FlexibleAppBar(),
    );
  }
}

class FlexibleAppBar extends StatelessWidget {
  const FlexibleAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      background: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Dimensions.pagePadding,
          vertical: 2 * Dimensions.pagePadding,
        ),
        child: Text(
          'Search',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      expandedTitleScale: 1.0,
      title: const Padding(
        padding: EdgeInsets.all(12.0),
        child: SizedBox(
          height: 50,
          child: TextField(
            readOnly: true,
            decoration: InputDecoration(
              hintText: 'Artists, songs or podcasts',
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
      ),
    );
  }
}

class GridList extends StatelessWidget {
  const GridList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(Dimensions.pagePadding),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 120,
          crossAxisCount: 2,
        ),
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return const Padding(
              padding: EdgeInsets.only(right: 12.0, bottom: 12.0),
              child: GenreCard(),
            );
          },
          childCount: 20,
        ),
      ),
    );
  }
}
