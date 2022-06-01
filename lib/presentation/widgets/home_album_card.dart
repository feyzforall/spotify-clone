import 'package:flutter/material.dart';

import '../../const/assets.dart';

class HomeAlbumCard extends StatelessWidget {
  const HomeAlbumCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          Assets.placeholder,
          fit: BoxFit.cover,
          width: 120,
          height: 120,
        ),
        const SizedBox(height: 10),
        Text(
          'Playlist ${index + 1}',
          style: Theme.of(context).textTheme.caption,
        )
      ],
    );
  }
}
