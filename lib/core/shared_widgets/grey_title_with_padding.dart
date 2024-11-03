import 'package:flutter/material.dart';
import '../themes/styles.dart';
Widget greyTitleWithPadding({required String title}){
  return Padding(
    padding: const EdgeInsets.only(left: 20, top: 20, bottom: 10),
    child: Text(
      title,
      style: Styles.textStyle15.copyWith(color: Colors.grey),
    ),
  );
}