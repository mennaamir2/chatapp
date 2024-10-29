import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../core/themes/styles.dart';

class NewGroupAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NewGroupAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.grey,
      ),
      title:  Text(
        'New Group',
        style: Styles.textStyle24,
      ),
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back, color: Colors.green),
      ),
      actions: [
        Container(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(onPressed: () {

          }, icon: const Icon(Icons.search,color: Colors.green,)),
        )
      ],
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}