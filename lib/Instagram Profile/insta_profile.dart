import 'package:flutter/material.dart';

class Task6Main extends StatelessWidget {
  const Task6Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 205, 195, 195),
        title: const Text(
          'pi_ne_apple',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        actions: [
          Container(
              height: 28,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 205, 195, 195),
                border: const Border.fromBorderSide(
                    BorderSide(color: Color.fromARGB(255, 0, 0, 0), width: 2)),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Center(
                child: Icon(
                  Icons.add,
                  size: 25,
                ),
              )),
          const Icon(
            Icons.menu,
            size: 35,
          ),
        ],
      ),
      body: DefaultTabController(
        length: 3,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/img_1.jpg'),
                    radius: 40.0,
                  ),
                  Column(
                    children: [
                      Text(
                        '6',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Text('posts'),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '62',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Text('followers'),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '68',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Text('following'),
                    ],
                  ),
                ],
              ),
              const Text(
                'आकृति राठौर।।',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),
              Container(
                height: 22.0,
                width: 96.0,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      20.0,
                    ),
                  ),
                ),
                child: const Text(
                  '@pi_ne_apple',
                  style: TextStyle(fontSize: 13),
                  textAlign: TextAlign.center,
                ),
              ),
              const Text(
                'D A Y D R E A M',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(0.0),
                    height: 25.0,
                    width: 210.0,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          5.0,
                        ),
                      ),
                    ),
                    child: const Text(
                      'Edit profile',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0.0),
                    height: 25.0,
                    width: 210.0,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          5.0,
                        ),
                      ),
                    ),
                    child: const Text(
                      'Share profile',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0.0),
                    height: 25.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          5.0,
                        ),
                      ),
                    ),
                    child: const Icon(
                      Icons.person_add_alt_1_outlined,
                      size: 20,
                    ),
                  )
                ],
              ),
              const TabBar(tabs: [
                Tab(
                    icon: Icon(
                  Icons.grid_on_outlined,
                  color: Colors.black,
                )),
                Tab(
                    icon: Icon(
                  Icons.video_library_outlined,
                  color: Colors.black,
                )),
                Tab(
                    icon: Icon(
                  Icons.assignment_ind_outlined,
                  color: Colors.black,
                ))
              ])
            ],
          ),
        ),
      ),
    );
  }
}
