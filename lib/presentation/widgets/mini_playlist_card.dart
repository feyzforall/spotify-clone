import 'package:flutter/material.dart';
import 'package:spotifyclone/entities/playlist.dart';

import '../../const/assets.dart';

class MiniPlaylistCard extends StatelessWidget {
  const MiniPlaylistCard({
    Key? key,
    required this.index,
    required this.playlist,
  }) : super(key: key);

  final int index;
  final Playlist playlist;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4.0),
      child: Container(
        child: Row(
          children: [
            Image.asset(
              playlist.image,
              width: 60,
              height: 100,
              fit: BoxFit.fill,
            ),
            const SizedBox(width: 20),
            Text(playlist.title),
          ],
        ),
        decoration: const BoxDecoration(
          color: Colors.black26,
        ),
      ),
    );
  }
}
