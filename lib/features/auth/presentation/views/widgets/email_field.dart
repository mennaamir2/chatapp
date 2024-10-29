import 'package:chatapp1/core/shared_widgets/default_text.dart';
import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  final TextEditingController emailController;
  // final String? Function(dynamic) validator;
  const EmailField({super.key, required this.emailController});

  @override
  Widget build(BuildContext context) {
    return defaultText(
      type: TextInputType.emailAddress,
      hint: "your email",
      label: "enter your email",
      prefix: Icons.email,
      controller: emailController,
      validate: (value) {
        if (value!.isEmpty) {
          return "Email must not be empty";
        }
        return null;
      },
    );
  }
}
