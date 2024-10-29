import 'package:chatapp1/core/themes/styles.dart';
import 'package:flutter/material.dart';

SnackBar customSnackBar({required String msg}) {
  return SnackBar(
      content:
     Text(
      msg,
      style: Styles.textStyle15,
    ),
  );
}
