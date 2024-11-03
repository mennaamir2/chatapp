import 'package:chatapp1/core/shared_widgets/grey_title_with_padding.dart';
import 'package:chatapp1/features/calls/presentation/views/widgets/calls_list_view.dart';
import 'package:flutter/material.dart';
class CallsBody extends StatelessWidget {
  const CallsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      children:  [
        greyTitleWithPadding(title: 'Recent'),
        CallsListView()

      ],

    );
  }
}
