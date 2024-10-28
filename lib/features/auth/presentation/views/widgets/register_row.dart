import 'package:chatapp1/core/themes/color_app.dart';
import 'package:chatapp1/features/auth/presentation/views/signup_view.dart';
import 'package:flutter/material.dart';
import '../../../../../core/themes/styles.dart';
class RegisterRow extends StatelessWidget {
  const RegisterRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don’t have an account?",style:TextStyle(fontWeight:FontWeight.w600),),
        TextButton(
            onPressed: () {Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const SignupView(),
              ),
            );}, child:  Text("Register here",style: Styles.textStyle15.copyWith(color: ColorApp.primaryColor),))
      ],
    );
  }
}
