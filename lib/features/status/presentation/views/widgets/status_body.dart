import 'package:chatapp1/core/shared_widgets/grey_title_with_padding.dart';
import 'package:chatapp1/features/status/presentation/views/widgets/add_status_list_tile.dart';
import 'package:chatapp1/features/status/presentation/views/widgets/muted_updates_list_view.dart';
import 'package:chatapp1/features/status/presentation/views/widgets/recent_updates_list_view.dart';
import 'package:chatapp1/features/status/presentation/views/widgets/viewed_updates_list_view.dart';
import 'package:flutter/material.dart';
class StatusBody extends StatelessWidget {
  const StatusBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      children:  [
        const AddStatusListTile(),
        greyTitleWithPadding(title: 'Recent updates'),
        const RecentUpdatesListView(),
        greyTitleWithPadding(title: 'Viewed updates'),
        const ViewedUpdatesListView(),
        greyTitleWithPadding(title: 'Muted updates'),
        const MutedUpdatesListView()
      ],
    );
  }
}
