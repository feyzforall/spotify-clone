import 'package:flutter/material.dart';

import '../../const/assets.dart';

class MiniPlaylistCard extends StatelessWidget {
  const MiniPlaylistCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4.0),
      child: Container(
        child: Row(
          children: [
            Image.asset(
              Assets.placeholder,
              width: 60,
              height: 100,
              fit: BoxFit.fill,
            ),
            const SizedBox(width: 20),
            Text('Playlist ${index + 1}'),
          ],
        ),
        decoration: const BoxDecoration(
          color: Colors.black26,
        ),
      ),
    );
  }
}
