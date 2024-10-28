import 'package:chatapp1/core/shared_widgets/default_text.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  final TextEditingController passwordController;
  final bool isPasswordVisible;
  final Function() toggleVisibility;
  final String? Function(dynamic)? function;
  const PasswordField(
      {super.key,
      required this.passwordController,
      required this.isPasswordVisible,
      required this.toggleVisibility,
      required this.function});

  @override
  Widget build(BuildContext context) {
    return defaultText(
      type: TextInputType.number,
      hint: "your password",
      label: "enter your password",
      prefix: Icons.lock,
      controller: passwordController,
      isObscure: !isPasswordVisible,
      validate: function,
      suffix: isPasswordVisible ? Icons.visibility_off : Icons.visibility,
      pressed: toggleVisibility,
    );
  }
}
