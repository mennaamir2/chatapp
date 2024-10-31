import 'package:chatapp1/core/themes/styles.dart';
import 'package:flutter/material.dart';

class AddStatusListTile extends StatelessWidget {
  const AddStatusListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading: Stack(
          children: [
            const CircleAvatar(
              radius: 30,
              child: Icon(Icons.person),
            ),
            Positioned(
                right: 1,
                bottom: 0,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(color: Colors.green, width: 2)),
                  child: const Icon(
                    Icons.add,
                    size: 15,
                  ),
                ))
          ],
        ),
        title: Text(
          'My Status',
          style: Styles.textStyle15,
        ),
        subtitle: Text(
          'Tap to add status update',
          style: Styles.textStyle15.copyWith(color: Colors.grey),
        ),
      ),
    );
  }
}
