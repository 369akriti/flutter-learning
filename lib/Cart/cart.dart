import 'package:flutter/material.dart';
import 'package:learning/Cart/components/product_item.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 12.0, bottom: 12.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.grey.shade300.withOpacity(0.6),
              ),
              child: const Icon(
                Icons.arrow_back_ios_new_sharp,
                size: 20,
              ),
            ),
          ),
          actions: const [
            Icon(
              Icons.delete_forever_sharp,
              size: 30,
              color: Colors.red,
            )
          ],
          centerTitle: true,
          title: const Text(
            'Cart',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          )),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text.rich(
              TextSpan(
                children: [
                  WidgetSpan(
                    child: Icon(
                      Icons.shopping_cart_checkout,
                    ),
                  ),
                  TextSpan(
                    text: '4 items in your cart',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const ProductItem(
              index: 'index',
              image: 'assets/images/chair_1.jpg',
              title: 'Net Gaming Chair',
              subtitle: 'Net Black | Stainless Steel | Comfortable Sitting',
              amount: '\$400',
            ),
            const ProductItem(
              index: 'index',
              image: 'assets/images/chair_2.jpg',
              title: 'Net Gaming Chair 3',
              subtitle: 'Net Black | Stainless Steel | Comfortable Sitting',
              amount: '\$399',
            ),
            const ProductItem(
              index: 'index',
              image: 'assets/images/chair_3.jpg',
              title: 'Net Gaming Chair 3',
              subtitle: 'Net Black | Stainless Steel | Comfortable Sitting',
              amount: '\$100',
            ),
            const ProductItem(
              index: 'index',
              image: 'assets/images/chair_4.jpg',
              title: 'Net Gaming Chair 4',
              subtitle: 'Net Black | Stainless Steel | Comfortable Sitting',
              amount: '\$200',
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: TextField(
                decoration: InputDecoration(
                    hoverColor: Color.fromARGB(255, 12, 48, 79),
                    labelText: 'Promo Code',
                    isDense: true,
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color.fromARGB(255, 12, 48, 79),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        borderSide: BorderSide(
                          style: BorderStyle.solid,
                          width: 0.8,
                        ))),
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sub total',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 101, 125, 102)),
                ),
                Text(
                  '\$ 1099.00',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 101, 125, 102)),
                )
              ],
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 101, 125, 102)),
                ),
                Text(
                  '\$ 40',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 101, 125, 102)),
                )
              ],
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Promo Discount',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 101, 125, 102)),
                ),
                Text(
                  '\$ 30.00',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 101, 125, 102)),
                )
              ],
            ),
            const Divider(
              color: Colors.black45,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 101, 125, 102)),
                ),
                Text(
                  '\$ 1109.99',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 101, 125, 102)),
                )
              ],
            ),
            const SizedBox(
              height: 5.0,
            ),
            Expanded(
              child: Center(
                child: Container(
                  height: 40,
                  width: 300,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
                      color: const Color.fromARGB(255, 10, 105, 78)),
                  child: const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      'Check out',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
