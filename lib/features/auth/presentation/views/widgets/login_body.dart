import 'package:chatapp1/features/auth/presentation/views/widgets/email_field.dart';
import 'package:chatapp1/features/auth/presentation/views/widgets/login_button.dart';
import 'package:chatapp1/features/auth/presentation/views/widgets/logo_widget.dart';
import 'package:chatapp1/features/auth/presentation/views/widgets/password_field.dart';
import 'package:chatapp1/features/auth/presentation/views/widgets/register_row.dart';
import 'package:chatapp1/features/auth/presentation/views/widgets/title_widget.dart';
import 'package:chatapp1/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  var formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric( horizontal: 16),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const LogoWidget(),
                  const TitleWidget(text: 'Log in to your account',),
                  const SizedBox(
                    height: 20,
                  ),
                  EmailField(
                    emailController: emailController,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  PasswordField(
                    function: (value) {
                      if (value!.isEmpty) {
                        return ("password must not be empty");
                      }
                      return null;
                    },
                    passwordController: passwordController,
                    isPasswordVisible: isPasswordVisible,
                    toggleVisibility: () {
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  LoginButton(function: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeView(),
                          ));
                    }
                  }),
                  const SizedBox(
                    height: 10,
                  ),
                  const RegisterRow()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
