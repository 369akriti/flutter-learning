import 'package:flutter/material.dart';
import 'package:learning/Booking%20App/components/search_feed_item.dart';

class SearchFeedPage extends StatelessWidget {
  SearchFeedPage({super.key});

  List list = [
    {
      'title': 'Ghost Game1',
      'subtitle': 'Super Best Ghost1',
      'price': '\$59 / night1',
      'ratings': '(1) reviews',
      'rate': '356 \$',
      'days': 'for 6 days',
    },
    {
      'title': 'Ghost Game2',
      'subtitle': 'Super Best Ghost2',
      'price': '\$59 / night2',
      'ratings': '(2) reviews',
      'rate': '1236 \$',
      'days': 'for 12 days',
    },
    {
      'title': 'Ghost Game3',
      'subtitle': 'Super Best Ghost3',
      'price': '\$59 / night3',
      'ratings': '(3) reviews',
      'rate': '1984 \$',
      'days': 'for 10 days',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 20,
            right: 20,
          ),
          child: Column(children: [
            TextField(
              cursorWidth: 1.0,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search_sharp,
                    color: Colors.grey[500],
                  ),
                  hintText: 'To',
                  hintStyle: TextStyle(
                    color: Colors.grey[500],
                  ),
                  fillColor: Colors.grey[300],
                  filled: true,
                  contentPadding: EdgeInsets.zero,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              width: double.infinity,
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Price',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '300\$-1500\$',
                          style: TextStyle(
                            color: Colors.grey[400],
                          ),
                        ),
                      ]),
                  Image.asset(
                    'assets/images/bar_graph.jpg',
                    fit: BoxFit.cover,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        SearchFeedItem(
                          title: list[index]['title'],
                          subtitle: list[index]['subtitle'],
                          price: list[index]['price'],
                          ratings: list[index]['ratings'],
                          index: index,
                          rate: list[index]['rate'],
                          days: list[index]['days'],
                        ),
                      ],
                    );
                  }),
            ),
          ]),
        ),
      ),
    );
  }
}
