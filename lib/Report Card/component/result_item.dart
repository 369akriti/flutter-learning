import 'package:flutter/material.dart';

class ResultItem extends StatelessWidget {
  final String title;
  final Widget child1;

  const ResultItem({
    super.key,
    required this.title,
    required this.child1,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.green,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        child1,
      ],
    );
  }
}
