import 'package:chatapp1/features/home/presentation/views/widgets/positioned_message.dart';
import 'package:flutter/material.dart';
import 'package:chatapp1/core/shared_widgets/custom_list_view.dart';

class ChatsView extends StatelessWidget {
  const ChatsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [customListView(title: 'Menna', subtitle: 'New Message',msgNumb: true
      ),
      const PositionedMessage()],
    );
  }
}
