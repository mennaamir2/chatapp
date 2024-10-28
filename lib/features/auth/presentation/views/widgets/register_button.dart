import 'package:chatapp1/core/shared_widgets/custom_button.dart';
import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton(
      {super.key,
        required this.function});
  final Function() function;

  @override
  Widget build(BuildContext context) {
    return customButton(text: "Sign Up", func: function);
  }
}
