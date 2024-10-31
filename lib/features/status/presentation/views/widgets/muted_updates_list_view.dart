import 'package:flutter/material.dart';

import '../../../../../core/shared_widgets/custom_list_view.dart';

class MutedUpdatesListView extends StatelessWidget {
  const MutedUpdatesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      foregroundDecoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.4),
      ),
      child: customListView(
          title: 'Menna Amir',
          subtitle: 'Today 12:00 PM',
          itemCount: 5,
          physics: NeverScrollableScrollPhysics()
      )
    );
  }
}