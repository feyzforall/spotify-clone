import 'package:flutter/material.dart';

import 'dart:math' as math;

import '../../const/assets.dart';

class GenreCard extends StatelessWidget {
  const GenreCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 200,
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(
              1.0,
            ),
          ),
        ),
        Positioned(
          top: 20,
          left: 10,
          child: Text(
            'Genre',
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        Positioned(
          bottom: 0,
          right: -20,
          child: RotationTransition(
            turns: const AlwaysStoppedAnimation(30 / 360),
            child: Image.asset(
              Assets.placeholder,
              width: 70,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
