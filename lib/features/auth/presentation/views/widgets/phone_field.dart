import 'package:chatapp1/core/shared_widgets/default_text.dart';
import 'package:flutter/material.dart';

class PhoneField extends StatelessWidget {
  final TextEditingController phoneController;
  // final String? Function(dynamic) validator;
  const PhoneField({super.key, required this.phoneController});

  @override
  Widget build(BuildContext context) {
    return defaultText(
      type: TextInputType.phone,
      hint: "your phone",
      label: "enter your phone",
      prefix: Icons.phone_android_rounded,
      controller: phoneController,
      validate: (value) {
        if (value!.isEmpty) {
          return "phone must not be empty";
        }
        return null;
      },
    );
  }
}