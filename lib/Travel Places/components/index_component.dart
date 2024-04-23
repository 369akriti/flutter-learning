import 'package:flutter/material.dart';

class IndexComponent extends StatelessWidget {
  final int index;
  const IndexComponent({super.key, required this.index});

  @override
  Widget build(BuildContext context) => Positioned(
        bottom: -75,
        child: Column(
          children: [
            Text(
              "Venue${index + 1}",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              "Venue${index + 1}",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
}
