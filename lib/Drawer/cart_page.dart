import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(context) {    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Text(
              'Cart',
              style: TextStyle(color: Colors.white),
            )),
        body: Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16.0),
                ListTile(
                  leading: Image.asset(
                    'assets/images/img_1.jpg',
                    height: 70,
                    width: 70,
                  ),
                  title: const Text(
                    'Pencil',
                    style: TextStyle(fontSize: 18),
                  ),
                  subtitle: const Text(
                    'In stock',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  trailing: const Text(
                    '1.5',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
