import 'package:flutter/material.dart';
import '../../../../../core/shared_widgets/default_text.dart';
import '../../../../../core/themes/styles.dart';

class ListTileProfile extends StatelessWidget {
  const ListTileProfile({super.key, required this.hint, required this.title});
  final String hint;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title,
          style: Styles.textStyle15
              .copyWith(color: Colors.grey[700], fontSize: 16)),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Material(
          elevation: 15,
          shadowColor: Colors.grey.withOpacity(0.5),
          borderRadius: BorderRadius.circular(30),
          child: defaultText(type: TextInputType.name, hint: hint),
        ),
      ),
    );
  }
}
