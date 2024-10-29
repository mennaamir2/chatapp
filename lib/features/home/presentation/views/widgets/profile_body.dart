import 'package:chatapp1/core/shared_widgets/custom_button.dart';
import 'package:chatapp1/core/themes/styles.dart';
import 'package:chatapp1/features/home/presentation/views/widgets/list_tile_profile.dart';
import 'package:chatapp1/features/home/presentation/views/widgets/participant_item.dart';
import 'package:chatapp1/features/home/presentation/views/widgets/profile_appbar.dart';
import 'package:flutter/material.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ProfileAppbar(),
      body: Column(
        children: [
          const Divider(),
          const SizedBox(height: 20),
          const ParticipantItem(
            bigRadius: 60,
            profileIconSize: 60,
            smallIconSize: 20,
            smallIcon: Icons.edit,
            bottomPosition: 0,
          ),
          const SizedBox(height: 20),
          const Divider(),
          const SizedBox(height: 20),
          const ListTileProfile(hint: 'Menna Amir', title: 'Name'),
          const SizedBox(height: 20),
          const ListTileProfile(hint: '+01125727329', title: 'Phone'),
          const SizedBox(height: 40),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child:
              customButton(
                  text: 'Save Profile',
                  func: () {},
                  style: Styles.textStyle15
                      .copyWith(color: Colors.white, fontSize: 16),
                  icon: true)
              ),
        ],
      ),
    );
  }
}
