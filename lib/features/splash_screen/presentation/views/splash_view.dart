import 'package:chatapp1/core/themes/color_app.dart';
import 'package:chatapp1/core/themes/styles.dart';
import 'package:flutter/material.dart';
import '../../../../core/constant/asset_images.dart';
import '../../../auth/presentation/views/login_view.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 10),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Login(),
        ),
      ), );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:

      Center(
        child: Column(
         //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 70,),
            Image.asset(AssetImages.logo,scale: 1.4,),
            SizedBox(height: 40,),
            Text("WhatsUp",style: Styles.textStyle24.copyWith(color: ColorApp.secondaryColor)),
            const SizedBox(height: 150,),
            Text("The best chat app of this century",style: Styles.textStyle15,)
          ],
        ),
      ),
    );
  }
}
