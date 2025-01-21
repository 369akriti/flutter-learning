import 'package:flutter/material.dart';

class TextfieldItem extends StatelessWidget {
  final String title;
  final TextEditingController controller;

  const TextfieldItem({
    super.key,
    required this.title,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
        SizedBox(
          height: 50,
          width: 250,
          child: TextFormField(
            controller: controller,
            decoration: const InputDecoration(
                border: OutlineInputBorder(
              borderSide: BorderSide(
                width: 0.5,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  4.0,
                ),
              ),
            )),
          ),
        )
      ],
    );
  }
}
