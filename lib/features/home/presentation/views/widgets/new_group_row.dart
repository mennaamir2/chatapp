import 'package:flutter/material.dart';
import '../../../../../core/shared_widgets/default_text.dart';
class NewGroupRow extends StatelessWidget {
  const NewGroupRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const CircleAvatar(
          radius: 30,
          child: Icon(
            Icons.camera_alt,
            color: Colors.green,
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
            child:
            defaultText(type: TextInputType.name,hint: 'Enter group name',)
        ),
      ],
    );
  }
}
