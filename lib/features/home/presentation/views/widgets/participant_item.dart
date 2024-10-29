import 'package:flutter/material.dart';

class ParticipantItem extends StatelessWidget {
  const ParticipantItem({
    super.key,
    required this.bigRadius,
    required this.profileIconSize,
    required this.smallIconSize,
    required this.smallIcon,
    required this.bottomPosition,
  });
  final double bigRadius;
  final double profileIconSize;
  final double smallIconSize;
  final double bottomPosition;
  final IconData smallIcon;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      CircleAvatar(
        radius: bigRadius,
        child: Icon(
          Icons.person,
          size: profileIconSize,
        ),
      ),
      Positioned(
        right: 0,
        bottom: bottomPosition,
        child: InkWell(
          onTap: () {},
          child: CircleAvatar(
            radius: smallIconSize - 5,
            backgroundColor: Colors.green,
            child: Icon(
              smallIcon,
              color: Colors.white,
              size: smallIconSize,
            ),
          ),
        ),
      ),
    ]);
  }
}
