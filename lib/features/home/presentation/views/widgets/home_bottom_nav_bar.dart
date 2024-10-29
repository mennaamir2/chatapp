import 'package:chatapp1/core/themes/color_app.dart';
import 'package:flutter/material.dart';

class HomeBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int)? onTap;
  const HomeBottomNavBar({super.key,required this.currentIndex,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
      selectedItemColor: ColorApp.primaryColor,
      currentIndex: currentIndex,
      onTap: onTap,
      items:const [
        BottomNavigationBarItem(icon: Icon(Icons.chat),label: 'Chats'),
        BottomNavigationBarItem(icon: Icon(Icons.tips_and_updates_rounded),label: 'Status'),
        BottomNavigationBarItem(icon: Icon(Icons.call),label: 'Calls')
      ],
    );
  }
}
