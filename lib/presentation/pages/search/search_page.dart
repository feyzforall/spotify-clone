import 'package:flutter/material.dart';

import 'package:spotifyclone/const/dimensions.dart';

import '../../widgets/genre_card.dart';

part 'search_page_widgets.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView(
        slivers: [
          CustomSliverAppBar(),
          GridList(),
        ],
      ),
    );
  }
}
