import 'package:chatapp1/core/themes/styles.dart';
import 'package:chatapp1/features/home/presentation/views/new_group_view.dart';
import 'package:chatapp1/features/home/presentation/views/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeViewAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HomeViewAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.grey,
      ),
      shape: const RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.grey,
          width: 0.5,
        ),
      ),
      title: Text('WhatsUp', style: Styles.textStyle24),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        PopupMenuButton(
          itemBuilder: (context) {
            return [
              PopupMenuItem(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NewGroupView(),
                        ));
                  },
                  child: Text(
                    'New Group',
                    style: Styles.textStyle15,
                  )),
              PopupMenuItem(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfileView(),
                        ));
                  },
                  child: Text(
                    'Profile',
                    style: Styles.textStyle15,
                  )),
              PopupMenuItem(
                child: Text(
                  'Starred Messages',
                  style: Styles.textStyle15,
                ),
              )
            ];
          },
          // icon: const Icon(Icons.more_vert),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
