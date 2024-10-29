import 'package:chatapp1/features/home/presentation/views/widgets/chats_view.dart';
import 'package:chatapp1/features/home/presentation/views/widgets/home_bottom_nav_bar.dart';
import 'package:chatapp1/features/home/presentation/views/widgets/home_view_appbar.dart';
import 'package:flutter/material.dart';
import '../../../calls/presentation/views/calls_view.dart';
import '../../../status/presentation/views/status_view.dart';
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedIndex = 0;
  final List<Widget> pages = [
    const ChatsView(),
    const StatusView(),
    const CallsView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  const HomeViewAppbar(),
      bottomNavigationBar: HomeBottomNavBar(
        currentIndex: selectedIndex,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
      body: SafeArea(
        child: pages[selectedIndex],
      ),
    );
  }
}
