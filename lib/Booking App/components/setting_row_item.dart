import 'package:flutter/material.dart';

class SettingRowItem extends StatelessWidget {
  final IconData icon;
  final String title;

  const SettingRowItem({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      leading: Icon(
        icon,
        color: Colors.grey[500],
      ),
      title: Text(title),
      trailing: Icon(
        Icons.keyboard_arrow_right,
        size: 20,
        color: Colors.grey[400],
      ),
    );
  }
}
