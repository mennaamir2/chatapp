import 'package:chatapp1/core/themes/color_app.dart';
import 'package:flutter/material.dart';

import '../themes/styles.dart';

Widget customListView(
    {required String title,
    required String subtitle,
    bool msgNumb = false,
    ScrollPhysics? physics,
    required int itemCount,
    Color? borderColor,
     Widget? trailing}) {
  return ListView.builder(
    shrinkWrap: true,
    physics: physics,
    itemCount: itemCount,
    itemBuilder: (context, index) {
      return ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Styles.textStyle15,
            ),
            if (msgNumb)
              Text(
                '12:00 PM',
                style: TextStyle(color: Colors.grey[800], fontSize: 14),
              )
          ],
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // const Icon(Icons.done_all, color: Colors.blueGrey, size: 20),
            // const SizedBox(width: 5),
            Text(
              subtitle,
              style: const TextStyle(color: Colors.blueGrey),
              // overflow: TextOverflow.ellipsis,
            ),
            if (msgNumb)
              const CircleAvatar(
                backgroundColor: ColorApp.primaryColor,
                radius: 12,
                child: Center(
                  child: Text(
                    '2',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
          ],
        ),
        leading: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border:borderColor!=null? Border.all(
              color:borderColor,
              width: 2,
            ):null
          ),
          child: const CircleAvatar(
            radius: 30,
            child: Icon(Icons.person),
          ),
        ),
        trailing:trailing!=null?Icon(Icons.call):null ,
      );
    },
  );
}
