import 'package:flutter/material.dart';
import 'package:learning/Booking%20App/payment_page.dart';

class SearchFeedItem extends StatelessWidget {
  final String title, subtitle, price, ratings, rate, days;
  final int index;
  const SearchFeedItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.ratings,
    required this.index,
    required this.rate,
    required this.days,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        height: MediaQuery.of(context).size.height * 0.28,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(8.0),
            ),
            color: Colors.white,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/img_${index + 3}.jpg'),
            )),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const Spacer(),
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Text(
                  price,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Row(children: [
                  const Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 17,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 17,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 17,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 17,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.grey[300],
                    size: 17,
                  ),
                  Text(
                    ratings,
                    style: TextStyle(
                      color: Colors.grey[300],
                    ),
                  ),
                ]),
              ]),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Icon(
                    Icons.favorite_border_sharp,
                    color: Colors.white,
                    size: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(0),
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(8.0),
                            bottomLeft: Radius.circular(8.0),
                          ),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Text(
                              rate,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              days,
                              style: const TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const PaymentPage(),
                          ),
                        ),
                        child: Container(
                          height: 50,
                          width: 30,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            color: Colors.grey[100],
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0),
                            ),
                          ),
                          child: const Icon(
                            Icons.keyboard_arrow_right,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ]);
  }
}
