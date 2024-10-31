import 'package:chatapp1/core/shared_widgets/custom_list_view.dart';
import 'package:flutter/material.dart';

class RecentUpdatesListView extends StatelessWidget {
  const RecentUpdatesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return customListView(
        title: 'Menna Amir',
        subtitle: 'Today 12:00 PM',
        itemCount: 5,
        borderColor: Colors.green,
      physics: NeverScrollableScrollPhysics()
    );
  }
}
