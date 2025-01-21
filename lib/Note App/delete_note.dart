import 'package:flutter/material.dart';

class DeleteNote extends StatelessWidget {
  const DeleteNote({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("WARNING"),
      content: const Text("Do You Really Want To Delete This Note?"),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: const Text("YES")),
        TextButton(
            onPressed: () {
              Navigator.of(context).pop(false);
            },
            child: const Text("NO"))
      ],
    );
  }
}
