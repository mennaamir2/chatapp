import 'package:chatapp1/core/themes/color_app.dart';
import 'package:chatapp1/core/themes/styles.dart';
import 'package:flutter/material.dart';

Widget customButton({
  Color? textColor,
  BorderRadius? borderRadius,
  required String text,
  required Function() func,
}) {
  return ElevatedButton(
      onPressed: func,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        backgroundColor: ColorApp.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(24),
        ),
      ),
      child: Text(
        text,
        style: Styles.textStyle24.copyWith(
          color: textColor ?? Colors.black,
        ),
      ));
}
