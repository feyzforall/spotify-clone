import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:spotifyclone/const/assets.dart';
import 'package:spotifyclone/const/dimensions.dart';
import 'package:spotifyclone/entities/playlist.dart';
import 'package:spotifyclone/main_screen.dart';
import 'package:spotifyclone/presentation/widgets/home_album_card.dart';
import 'package:spotifyclone/usecases/library_filter_notifier.dart';
import 'package:spotifyclone/usecases/sliver_app_bar_notifier.dart';

import '../../../usecases/sliver_title_visibility_controller.dart';
import '../../widgets/filter_pill_button.dart';

part 'library_page_widgets.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  bool isGrid = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener(
      onNotification: (notification) {
        sliverController(notification, context);
        return true;
      },
      child: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          const CustomSliverAppBar(),
          const FilterRow(),
          context.watch<LibraryFilterNotifier>().isGrid ? const GridList() : const TileList(),
        ],
      ),
    );
  }
}
