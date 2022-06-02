part of 'library_page.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      pinned: true,
      snap: false,
      floating: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search_outlined),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add),
        )
      ],
      title: Row(
        children: const [
          CircleAvatar(
            radius: 17,
            foregroundImage: AssetImage(
              Assets.profil,
            ),
          ),
          SizedBox(width: 10),
          Text('Your Library')
        ],
      ),
      centerTitle: false,
      expandedHeight: 120.0,
      flexibleSpace: FlexibleAppBar(),
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
      stretchModes: const [
        StretchMode.blurBackground,
      ],
      title: Visibility(
        visible: context.watch<SliverNotifier>().isVisible,
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              FilterPillButton(
                label: 'Playlists',
                onPressed: () {},
              ),
              const SizedBox(width: 12),
              FilterPillButton(
                label: 'Podcasts & Show',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      expandedTitleScale: 1.0,
    );
  }
}

class FilterRow extends StatelessWidget {
  const FilterRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Recently Added'),
            IconButton(
              onPressed: () {
                context.read<LibraryFilterNotifier>().toggleGrid();
              },
              icon: Icon(
                context.watch<LibraryFilterNotifier>().isGrid ? Icons.list_outlined : Icons.grid_view_outlined,
              ),
            )
          ],
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
      padding: Dimensions.pagePadding,
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 220,
          crossAxisCount: 2,
        ),
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4.0),
                    child: Image.asset(
                      playlists[index].image,
                      fit: BoxFit.cover,
                      height: 150,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(playlists[index].title),
                  Text(
                    playlists[index].subtitle,
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
            );
          },
          childCount: playlists.length,
        ),
      ),
    );
  }
}

class TileList extends StatelessWidget {
  const TileList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 4.0,
            ),
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(playlists[index].title),
              subtitle: Text(playlists[index].subtitle),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(4.0),
                child: Image.asset(
                  playlists[index].image,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
        childCount: playlists.length,
      ),
    );
  }
}
