import 'package:flutter/material.dart';
import 'package:learning/Booking%20App/components/payment_listtile_item.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.blue,
        ),
        titleSpacing: 0,
        title: const Text(
          'Back',
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            'Payment',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Divider(),
          const PaymentListtileItem(
            title: 'Credit Card',
            subtitle: 'Pay with a credit card',
            leading: Icons.credit_card_outlined,
            trailing: Icons.keyboard_arrow_down,
          ),
          const PaymentListtileItem(
            title: 'Face ID',
            subtitle: 'Confirm your payment with Face ID',
            trailing: Icons.keyboard_arrow_right,
            leading: Icons.document_scanner_outlined,
          ),
          const SizedBox(
            height: 40.0,
          ),
          const Text(
            'Card number',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 17,
            ),
          ),
          TextFormField(
            cursorColor: Colors.grey,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.all(10),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
              suffixIcon: Icon(
                Icons.credit_card_outlined,
                size: 30,
                color: Colors.grey[400],
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Expiration Date',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17,
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 44,
                      child: DropdownButtonFormField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(
                              right: 5,
                              left: 10,
                            ),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                          ),
                          focusColor: Colors.white,
                          value: '--',
                          items: [
                            '--',
                            '01',
                            '02',
                            '03',
                            '04',
                            '05',
                            '06',
                            '07',
                            '08',
                            '09',
                            '10',
                            '11',
                            '12'
                          ].map((e) {
                            return DropdownMenuItem(value: e, child: Text(e));
                          }).toList(),
                          onChanged: (val) {}),
                    ),
                    const SizedBox(width: 10.0),
                    SizedBox(
                      width: 100,
                      height: 44,
                      child: DropdownButtonFormField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(
                              right: 15,
                              left: 10,
                            ),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                          ),
                          focusColor: Colors.white,
                          value: '--',
                          items: [
                            '--',
                            '2021',
                            '2022',
                            '2023',
                            '2024',
                            '2025',
                          ].map((e) {
                            return DropdownMenuItem(value: e, child: Text(e));
                          }).toList(),
                          onChanged: (val) {}),
                    ),
                  ],
                ),
              ],
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              const Text(
                'CVV/CVC',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 44,
                width: 70,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(
                      left: 18,
                      right: 10,
                    ),
                    fillColor: Colors.white,
                    hintText: 'CVV',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    hintTextDirection: TextDirection.ltr,
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 212, 210, 210),
                        ),
                        borderRadius: BorderRadius.circular(
                          4.0,
                        )),
                  ),
                ),
              ),
            ]),
          ]),
          const SizedBox(
            height: 15.0,
          ),
          const Text(
            'Card holder name',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 17,
            ),
          ),
          TextFormField(
            cursorColor: Colors.grey,
            decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(10),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(0),
            height: 50,
            width: 510,
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
            ),
            child: const Center(
              child: Text(
                'Confirm Payment',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
