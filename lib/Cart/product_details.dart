import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final String index, image, title, amount;
  const ProductDetails(
      {super.key,
      required this.index,
      required this.title,
      required this.amount,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Hero(
          tag: 'tag-$index',
          child: Container(
            height: MediaQuery.sizeOf(context).height / 2.5,
            width: MediaQuery.sizeOf(context).width * 1,
            decoration: BoxDecoration(
                color:
                    const Color.fromARGB(255, 192, 236, 194).withOpacity(0.9),
                image: DecorationImage(
                    image: AssetImage(
                  image,
                ))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios_new_sharp,
                          color: Colors.black,
                          size: 15,
                        ),
                      ),
                    ),
                    const Text(
                      'Product Details',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Icon(
                        Icons.favorite_outlined,
                        color: Colors.red,
                        size: 20,
                      ),
                    ),
                  ]),
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  amount,
                  style: const TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ],
            )),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                height: 25.0,
                width: 60.0,
                padding: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 19, 26, 101)),
                    borderRadius: BorderRadius.circular(5.0)),
                child: const Text.rich(
                  TextSpan(children: [
                    WidgetSpan(
                        child: Icon(
                      Icons.star_outlined,
                      color: Color.fromARGB(255, 6, 12, 69),
                      size: 18,
                    )),
                    TextSpan(
                        text: '4.2',
                        style: TextStyle(
                          color: Color.fromARGB(255, 7, 12, 65),
                        )),
                  ]),
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              const Text.rich(
                TextSpan(children: [
                  TextSpan(
                      text: '210+',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 12,
                      )),
                  TextSpan(
                    text: 'Reviews',
                    style: TextStyle(
                      color: Color.fromARGB(255, 3, 249, 81),
                      decoration: TextDecoration.underline,
                    ),
                  )
                ]),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Icon(
              Icons.circle,
              size: 13,
            ),
            SizedBox(
              width: 5.0,
            ),
            Expanded(
              child: Text(
                  'Divide the remaining main axis space among the children with non-zero flex factors (e.g., those that are Expanded) according to their flex factor. For example, a child with a flex factor of 2.0 will receive twice the amount of main axis space as a child with a flex factor of 1.0.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
            )
          ]),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Icon(
              Icons.circle,
              size: 13,
            ),
            SizedBox(
              width: 5.0,
            ),
            Expanded(
              child: Text(
                  'Divide the remaining main axis space among the children with non-zero flex factors (e.g., those that are Expanded) according to their flex factor. For example, a child with a flex factor of 2.0 will receive twice the amount of main axis space as a child with a flex factor of 1.0.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                    color: const Color.fromARGB(
                      255,
                      10,
                      105,
                      78,
                    )),
                child: const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    'Buy Now',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    'Add to Cart',
                    style: TextStyle(
                        color: Color.fromARGB(
                          255,
                          10,
                          105,
                          78,
                        ),
                        fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
