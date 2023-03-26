import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../const/assets.dart';
import '../../../const/dimensions.dart';
import '../../../const/routes.gr.dart';
import '../../../entities/playlist.dart';
import '../widgets/home_album_card.dart';
import '../widgets/mini_playlist_card.dart';
import '../widgets/new_release_card.dart';

part 'home_page_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(Dimensions.pagePadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeHeadline(),
              SizedBox(height: context.height * 0.05),
              const SizedBox(
                height: 210,
                child: MiniPlaylistGrid(),
              ),
              const HomeListTile(
                title: 'NEW RELEASE FROM',
                subtitle: 'Kendrick Lamar',
              ),
              SizedBox(height: context.height * 0.01),
              const NewReleaseCard(),
              SizedBox(height: context.height * 0.03),
              const HorizontalAlbumListWithTitle(
                title: 'Made for Feyzullah',
              ),
              const HorizontalAlbumListWithTitle(
                title: 'Discover',
              ),
              const HorizontalAlbumListWithWidget(
                title: HomeListTile(
                  title: 'More Like',
                  subtitle: 'Rammstein',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
