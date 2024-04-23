import 'package:flutter/material.dart';

class PaymentListtileItem extends StatelessWidget {
  final IconData leading, trailing;
  final String title, subtitle;

  const PaymentListtileItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.trailing,
    required this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.all(0),
          leading: Icon(
            leading,
            size: 40,
            color: Colors.grey[400],
          ),
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey[500],
            ),
          ),
          trailing: Icon(
            trailing,
            size: 25,
            color: Colors.blue[400],
          ),
        ),
        const Divider(
          indent: 52,
        ),
      ],
    );
  }
}
