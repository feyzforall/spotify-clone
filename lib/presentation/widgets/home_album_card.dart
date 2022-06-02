import 'package:flutter/material.dart';

import '../../const/assets.dart';

class HomeAlbumCard extends StatelessWidget {
  const HomeAlbumCard({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          fit: BoxFit.cover,
          width: 120,
          height: 120,
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: Theme.of(context).textTheme.caption,
        )
      ],
    );
  }
}
