import 'package:flutter/material.dart';
import 'package:spotifyclone/const/assets.dart';

import '../../../const/dimensions.dart';
import '../../widgets/mini_playlist_card.dart';

part 'home_screen_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: Dimensions.pagePadding,
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.07),
            const HomeHeadline(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            const SizedBox(
              height: 210,
              child: MiniPlaylistGrid(),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'NEW RELEASE FROM',
                style: Theme.of(context).textTheme.caption,
              ),
              subtitle: Text(
                'Kendrick Lamar',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              leading: const CircleAvatar(
                foregroundImage: AssetImage(
                  Assets.placeholder,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            const NewReleaseCard()
          ],
        ),
      ),
    );
  }
}
