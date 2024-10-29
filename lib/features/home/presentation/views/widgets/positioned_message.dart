import 'package:flutter/material.dart';

class PositionedMessage extends StatelessWidget {
  const PositionedMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 20,
        right: 20,
        child: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {},
          child: const Icon(
            Icons.message,
            color: Colors.white,
          ),
        ));
  }
}
