import 'package:flutter/material.dart';

class FlagComponent extends StatelessWidget {
  final int index;
  const FlagComponent({super.key, required this.index});

  @override
  Widget build(BuildContext context) => Positioned(
        bottom: -20,
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(100))),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(200)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/image_${index + 1}.jpg"),
                ),
              ),
            ),
          ),
        ),
      );
}
