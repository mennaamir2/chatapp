import 'package:chatapp1/features/status/presentation/views/widgets/add_status_list_tile.dart';
import 'package:chatapp1/features/status/presentation/views/widgets/muted_updates_list_view.dart';
import 'package:chatapp1/features/status/presentation/views/widgets/recent_updates_list_view.dart';
import 'package:chatapp1/features/status/presentation/views/widgets/updates_title.dart';
import 'package:chatapp1/features/status/presentation/views/widgets/viewed_updates_list_view.dart';
import 'package:flutter/material.dart';
class StatusBody extends StatelessWidget {
  const StatusBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      children: const [
        AddStatusListTile(),
        UpdatesTitle(title: 'Recent updates'),
        RecentUpdatesListView(),
        UpdatesTitle(title: 'Viewed updates'),
        ViewedUpdatesListView(),
        UpdatesTitle(title: 'Muted updates'),
        MutedUpdatesListView()
      ],
    );
  }
}
