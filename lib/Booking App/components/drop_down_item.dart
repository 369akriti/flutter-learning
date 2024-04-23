import 'package:flutter/material.dart';

class DropDownItem extends StatelessWidget {
  const DropDownItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
                        height: 36,
                        width: 60,
                        child: DropdownButtonFormField(
                            decoration: InputDecoration(
                                
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.grey,
                                    ),
                                    borderRadius: BorderRadius.circular(4.0))),
                            focusColor: Colors.white,
                            value: '--',
                            items: [
                              '--',
                              '1',
                              '2',
                              '3',
                              '4',
                              '5',
                              '6',
                              '7',
                              '8',
                              '9',
                              '10',
                              '11',
                              '12'
                            ].map((e) {
                              return DropdownMenuItem(value: e, child: Text(e));
                            }).toList(),
                            onChanged: (val) {}),
                      );
  }
}