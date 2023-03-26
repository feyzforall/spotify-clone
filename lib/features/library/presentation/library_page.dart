import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../const/assets.dart';
import '../../../../const/dimensions.dart';
import '../../../../entities/playlist.dart';
import '../../../../usecases/library_filter_notifier.dart';
import '../../../../usecases/sliver_app_bar_notifier.dart';
import '../../../../usecases/sliver_title_visibility_controller.dart';
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
