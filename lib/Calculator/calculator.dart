import 'dart:developer';

import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  Calculator({super.key});

  Widget calculatorbutton(String btntext, Color btncolor, Color txtColor) {
    return InkWell(
      onTap: () {
        log(btntext);
      },
      child: CircleAvatar(
        radius: 30,
        backgroundColor: btncolor,
        child: Text(
          btntext,
          style: TextStyle(
            fontSize: 20,
            color: txtColor,
          ),
        ),
      ),
    );
  }

  TextEditingController userinput1controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Container(
            alignment: Alignment.bottomRight,
            height: 200,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: const Text(''),
          ),
          Row(children: [
            Expanded(
              child: TextField(
                controller: userinput1controller,
              ),
            ),
            const Expanded(
              child: TextField(),
            ),
          ]),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(
                8.0,
              ),
              mainAxisSpacing: 10,
              crossAxisSpacing: 80,
              crossAxisCount: 4,
              children: [
                calculatorbutton(
                  'AC',
                  Colors.grey.shade300,
                  Colors.black,
                ),
                calculatorbutton(
                  'C',
                  Colors.grey.shade300,
                  Colors.black,
                ),
                calculatorbutton(
                  '%',
                  Colors.grey.shade300,
                  Colors.black,
                ),
                calculatorbutton(
                  '/',
                  Colors.amber.shade700,
                  Colors.white,
                ),
                calculatorbutton(
                  '7',
                  Colors.grey.shade300,
                  Colors.black,
                ),
                calculatorbutton(
                  '8',
                  Colors.grey.shade300,
                  Colors.black,
                ),
                calculatorbutton(
                  '9',
                  Colors.grey.shade300,
                  Colors.black,
                ),
                calculatorbutton(
                  '*',
                  Colors.amber.shade700,
                  Colors.white,
                ),
                calculatorbutton(
                  '4',
                  Colors.grey.shade300,
                  Colors.black,
                ),
                calculatorbutton(
                  '5',
                  Colors.grey.shade300,
                  Colors.black,
                ),
                calculatorbutton(
                  '6',
                  Colors.grey.shade300,
                  Colors.black,
                ),
                calculatorbutton(
                  '-',
                  Colors.amber.shade700,
                  Colors.white,
                ),
                calculatorbutton(
                  '1',
                  Colors.grey.shade300,
                  Colors.black,
                ),
                calculatorbutton(
                  '2',
                  Colors.grey.shade300,
                  Colors.black,
                ),
                calculatorbutton(
                  '3',
                  Colors.grey.shade300,
                  Colors.black,
                ),
                calculatorbutton(
                  '+',
                  Colors.amber.shade700,
                  Colors.white,
                ),
                calculatorbutton(
                  '0',
                  Colors.grey.shade300,
                  Colors.black,
                ),
                calculatorbutton(
                  '.',
                  Colors.grey.shade300,
                  Colors.black,
                ),
                calculatorbutton(
                  'del',
                  Colors.grey.shade300,
                  Colors.black,
                ),
                calculatorbutton(
                  '=',
                  Colors.amber.shade700,
                  Colors.white,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
