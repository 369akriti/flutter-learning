import 'package:flutter/material.dart';
import 'package:learning/Booking%20App/search_feed_page.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: Padding(
        padding: const EdgeInsets.only(
          top: 70.0,
          right: 20.0,
          left: 20.0,
        ),
        child: Column(children: [
          Text.rich(
            TextSpan(children: [
              const TextSpan(
                  text: 'Booking',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
              TextSpan(
                  text: '.com',
                  style: TextStyle(
                      color: Colors.blue[300],
                      fontSize: 30,
                      fontWeight: FontWeight.bold))
            ]),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Search for cheap Hotels',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          const TextField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.my_location,
                  color: Colors.blue,
                ),
                prefixIcon: Icon(
                  Icons.location_on,
                  color: Colors.blue,
                ),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 0, style: BorderStyle.none),
                    borderRadius: BorderRadius.all(
                      Radius.circular(4.0),
                    )),
              )),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(4.0),
                )),
            child: const Column(
              children: [
                TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.calendar_today,
                        color: Colors.blue,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 0, style: BorderStyle.none),
                      ),
                    )),
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Divider(thickness: 0.4),
                ),
                TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.calendar_today,
                        color: Colors.blue,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 0, style: BorderStyle.none),
                      ),
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          DropdownButtonHideUnderline(
            child: DropdownButtonFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                        borderRadius: BorderRadius.circular(4.0))),
                focusColor: Colors.white,
                value: '-Select Pessenger-',
                items: [
                  '-Select Pessenger-',
                  'Passenger 1',
                  'Passenger 2',
                  'Passenger 3',
                  'Passenger 4',
                  'Passenger 5'
                ].map((e) {
                  return DropdownMenuItem(value: e, child: Text(e));
                }).toList(),
                onChanged: (val) {}),
          ),
          const SizedBox(
            height: 40.0,
          ),
          SizedBox(
            width: 500,
            height: 40,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SearchFeedPage(),
                  ),
                );
              },
              style: ButtonStyle(
                elevation: const MaterialStatePropertyAll(0.0),
                backgroundColor: MaterialStateProperty.all(
                  Colors.orange[700],
                ),
                shape: MaterialStateProperty.all(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        4.0,
                      ),
                    ),
                  ),
                ),
              ),
              child: const Text(
                'Find Hotels',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
