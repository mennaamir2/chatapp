import 'package:flutter/material.dart';
import '../../../../../core/constant/asset_images.dart';
class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Image.asset(AssetImages.logo,scale:1.5,);
  }
}
