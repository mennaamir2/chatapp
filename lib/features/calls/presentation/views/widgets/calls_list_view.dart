import 'package:flutter/material.dart';

import '../../../../../core/shared_widgets/custom_list_view.dart';

class CallsListView extends StatelessWidget {
  const CallsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return customListView(
        subtitle: 'Today, 10:30 AM',
        title: 'Menna Amir',
        itemCount: 15,
        physics: NeverScrollableScrollPhysics(),
    trailing: Icon(Icons.call));
  }
}
