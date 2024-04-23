import 'package:flutter/material.dart';

class NotificationItem extends StatelessWidget {
  final String title, subtitle, price, data;

  const NotificationItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        title,
        style: TextStyle(
          color: Colors.grey[500],
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        subtitle,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      Stack(alignment: Alignment.center, clipBehavior: Clip.none, children: [
        Container(
          padding: const EdgeInsets.only(
            top: 30,
            left: 20,
            right: 20,
            bottom: 20,
          ),
          width: double.infinity,
          height: 160,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                price,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              Text(
                data,
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 16,
                ),
              ),
              const Divider(),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.settings,
                      color: Colors.grey[400],
                    ),
                    Text('Settings',
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 17,
                        )),
                    VerticalDivider(
                      color: Colors.grey[400],
                      thickness: 1,
                    ),
                    Icon(
                      Icons.delete,
                      color: Colors.grey[400],
                    ),
                    Text('Delete',
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 17,
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
            top: -15,
            left: 20,
            child: Container(
              height: 30,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                  color: Colors.indigo[300]),
              child: const Center(
                child: Text(
                  'Best price',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            )),
      ]),
      const SizedBox(
        height: 30,
      ),
    ]);
  }
}
