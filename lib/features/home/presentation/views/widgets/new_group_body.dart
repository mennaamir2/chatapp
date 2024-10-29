import 'package:chatapp1/core/themes/styles.dart';
import 'package:chatapp1/features/home/presentation/views/widgets/new_group_appbar.dart';
import 'package:chatapp1/features/home/presentation/views/widgets/new_group_row.dart';
import 'package:chatapp1/features/home/presentation/views/widgets/participant_item.dart';
import 'package:chatapp1/features/home/presentation/views/widgets/positioned_message.dart';
import 'package:flutter/material.dart';

class NewGroupBody extends StatelessWidget {
  const NewGroupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NewGroupAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const NewGroupRow(),
                const SizedBox(height: 20),
                const Divider(),
                const SizedBox(height: 20),
                Text('Participants',
                    style:
                        Styles.textStyle15.copyWith(color: Colors.grey[700])),
                const SizedBox(height: 20),
                SizedBox(
                  height: 80,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: ParticipantItem(
                            bigRadius: 30,
                            smallIconSize: 15,
                            profileIconSize: 25,
                            smallIcon: Icons.close,
                            bottomPosition: 15,
                          ));
                    },
                  ),
                ),
              ],
            ),
            const PositionedMessage(),
          ],
        ),
      ),
    );
  }
}
