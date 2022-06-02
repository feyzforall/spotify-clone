import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spotifyclone/const/dimensions.dart';

import '../../../const/assets.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            centerTitle: false,
            pinned: true,
            toolbarHeight: 90,
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 24.0),
                child: Text(
                  'Search',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              expandedTitleScale: 1.0,
              title: const Padding(
                padding: EdgeInsets.all(12.0),
                child: SizedBox(
                  height: 50,
                  child: TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                      hintText: 'Artists, songs or podcasts',
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
