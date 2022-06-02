import 'package:flutter/material.dart';

import '../../const/assets.dart';

class NewReleaseCard extends StatelessWidget {
  const NewReleaseCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4.0),
      child: Container(
        height: 120,
        child: Row(
          children: [
            Image.asset(
              Assets.placeholder,
              width: 120,
              height: 120,
              fit: BoxFit.fill,
            ),
            const SizedBox(width: 20),
            Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: const ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text('Mr.Morale & The Big Steppers'),
                    subtitle: Text('Kendrick Lamar'),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.favorite_outline),
                      Icon(Icons.play_circle_fill_outlined),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
        decoration: const BoxDecoration(
          color: Colors.black26,
        ),
      ),
    );
  }
}
