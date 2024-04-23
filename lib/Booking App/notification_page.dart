import 'package:flutter/material.dart';
import 'package:learning/Booking%20App/components/notification_item.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        title: const Text(
          'Notification',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.only(
          top: 32,
          left: 32,
          right: 32,
        ),
        child: Column(children: [
          NotificationItem(
            title: 'LED . TLL',
            subtitle: 'St. Petersburg - Tallinn',
            price: '452 USD',
            data: '20 Aug - 4 Sep . 1 passenger',
          ),
          NotificationItem(
            title: 'NY . LON',
            subtitle: 'New York - London',
            price: '1832 USD',
            data: '29 Aug - 9 Sep . 1 passenger',
          ),
        ]),
      ),
    );
  }
}
