import 'package:chatapp1/core/shared_widgets/custom_snack_bar.dart';
import 'package:chatapp1/features/auth/presentation/views/widgets/email_field.dart';
import 'package:chatapp1/features/auth/presentation/views/widgets/login_row.dart';
import 'package:chatapp1/features/auth/presentation/views/widgets/logo_widget.dart';
import 'package:chatapp1/features/auth/presentation/views/widgets/name_field.dart';
import 'package:chatapp1/features/auth/presentation/views/widgets/password_field.dart';
import 'package:chatapp1/features/auth/presentation/views/widgets/phone_field.dart';
import 'package:chatapp1/features/auth/presentation/views/widgets/register_button.dart';
import 'package:chatapp1/features/auth/presentation/views/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import '../../../../home/presentation/views/home_view.dart';

class SignupBody extends StatefulWidget {
  const SignupBody({super.key});

  @override
  State<SignupBody> createState() => _SignupBodyState();
}

class _SignupBodyState extends State<SignupBody> {
  var formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const LogoWidget(),
                  const TitleWidget(text: "Register To New Account"),
                  const SizedBox(
                    height: 20,
                  ),
                  NameField(nameController: nameController),
                  const SizedBox(
                    height: 15,
                  ),
                  EmailField(
                    emailController: emailController,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  PhoneField(phoneController: phoneController),
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
                  RegisterButton(function: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeView(),
                          ));
                    }
                      else if(passwordController.text.length <8) {
                        return ScaffoldMessenger.of(context).showSnackBar(
                            customSnackBar(msg: "Password must be at least 8 characters")
                        );

                      }

                  }),
                  const SizedBox(
                    height: 10,
                  ),
                  const LoginRow()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
