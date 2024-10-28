import 'package:chatapp1/core/shared_widgets/custom_button.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton(
      {super.key,
      required this.function});
  final Function() function;

  @override
  Widget build(BuildContext context) {
    return customButton(text: "Log In", func: function);
  }
}
