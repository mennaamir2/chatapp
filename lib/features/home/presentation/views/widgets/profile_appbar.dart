import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class ProfileAppbar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.grey,
      ),
      title: const Text(
        'Profile',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back, color: Colors.green),
      ),
    );
  }
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
