import 'package:chatapp1/core/themes/color_app.dart';
import 'package:chatapp1/core/themes/styles.dart';
import 'package:flutter/material.dart';

Widget customButton({
  Color? textColor,
  BorderRadius? borderRadius,
  required String text,
  required Function() func,
  TextStyle? style,
  bool icon = false,
}) {
  return ElevatedButton(
      onPressed: func,
      style: ElevatedButton.styleFrom(
        elevation: 5,
        minimumSize: const Size(double.infinity, 50),
        backgroundColor: ColorApp.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(24),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon) const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.save,color: Colors.white,),
          ),
          Text(
            text,
            style: style ??
                Styles.textStyle24.copyWith(
                  color: textColor ?? Colors.black,
                ),
          ),
        ],
      ));
}
