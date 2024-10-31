import 'package:chatapp1/core/themes/styles.dart';
import 'package:flutter/material.dart';

class UpdatesTitle extends StatelessWidget {
  const UpdatesTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 20, bottom: 10),
      child: Text(
        title,
        style: Styles.textStyle15.copyWith(color: Colors.grey),
      ),
    );
  }
}