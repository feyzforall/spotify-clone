import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spotifyclone/const/assets.dart';
import 'package:spotifyclone/const/routes.dart';
import 'package:spotifyclone/const/routes.gr.dart';
import 'package:spotifyclone/entities/playlist.dart';
import 'package:spotifyclone/main_screen.dart';
import 'package:spotifyclone/presentation/pages/library/library_page.dart';

import '../../../const/dimensions.dart';
import '../../widgets/home_album_card.dart';
import '../../widgets/mini_playlist_card.dart';
import '../../widgets/new_release_card.dart';

part 'home_screen_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: Dimensions.pagePadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.07),
            const HomeHeadline(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            const SizedBox(
              height: 210,
              child: MiniPlaylistGrid(),
            ),
            const HomeListTile(
              title: 'NEW RELEASE FROM',
              subtitle: 'Kendrick Lamar',
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            const NewReleaseCard(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
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
    );
  }
}
