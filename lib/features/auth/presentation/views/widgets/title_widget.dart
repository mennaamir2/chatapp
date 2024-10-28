import 'package:chatapp1/core/themes/styles.dart';
import 'package:flutter/material.dart';
class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key,required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: Styles.textStyle24,);
  }
}
