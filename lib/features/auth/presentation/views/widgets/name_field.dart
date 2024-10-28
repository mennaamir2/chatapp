import 'package:chatapp1/core/shared_widgets/default_text.dart';
import 'package:flutter/material.dart';

class NameField extends StatelessWidget {
  final TextEditingController nameController;
  // final String? Function(dynamic) validator;
  const NameField({super.key, required this.nameController});

  @override
  Widget build(BuildContext context) {
    return defaultText(
      type: TextInputType.name,
      hint: "your name",
      label: "enter your name",
      prefix: Icons.person,
      controller: nameController,
      validate: (value) {
        if (value!.isEmpty) {
          return "name must not be empty";
        }
        return null;
      },
    );
  }
}
