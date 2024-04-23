import 'package:flutter/material.dart';

class OutputPage extends StatelessWidget {
  final String email, password;
  OutputPage({super.key, required this.email, required this.password});

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(TextSpan(children: [
            const TextSpan(
                text: 'Email or Username',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
              text: email,
            ),
          ])),
          Text.rich(TextSpan(children: [
            const TextSpan(
                text: 'Password',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
              text: password,
            ),
          ])),
        ],
      ),
    );
  }
}
