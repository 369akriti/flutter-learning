import 'package:flutter/material.dart';

class OneDayHomeWork extends StatelessWidget {
  const OneDayHomeWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: '\u2022'),
          BottomNavigationBarItem(icon: Icon(Icons.access_time), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '')
        ],
      ),
      body: DefaultTabController(
        length: 3,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 28.0,
            right: 28.0,
            top: 28.0,
          ),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const Text.rich(
                  TextSpan(children: [
                    TextSpan(
                        text: 'Hi, David ',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        )),
                    WidgetSpan(
                      child: Icon(
                        Icons.waving_hand,
                        color: Colors.yellow,
                      ),
                    ),
                  ]),
                ),
                Text(
                  'Explore the World',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ]),
              const CircleAvatar(
                radius: 28,
                backgroundImage: AssetImage(
                  'assets/images/pic_1.jpg',
                ),
              ),
            ]),
            const SizedBox(
              height: 24.0,
            ),
            TextFormField(
              autofocus: true,
              cursorWidth: 0.5,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 24.0),
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 24.0),
                  child: Icon(
                    Icons.tune,
                    color: Colors.grey[400],
                  ),
                ),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                    style: BorderStyle.none,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                hintText: 'Search Places',
                hintStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[400],
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular places',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'View all',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 10.0,
                      offset: Offset.fromDirection(-5, 10),
                    )
                  ],
                  color: Colors.black,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(16.0),
                  ),
                ),
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.white,
                dividerColor: Colors.white,
                tabs: const [
                  Tab(
                    text: 'Most Viewed',
                  ),
                  Tab(
                    text: 'Nearby',
                  ),
                  Tab(
                    text: 'Latest',
                  ),
                ]),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 380,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(children: [
                      Stack(clipBehavior: Clip.none, children: [
                        Container(
                          height: 390,
                          width: 280,
                          margin: const EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                offset: const Offset(-2, 15),
                                blurRadius: 10.0,
                              ),
                            ],
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                'assets/images/img_${index + 1}.jpg',
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 30,
                          top: 40,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 134, 119, 119),
                              borderRadius: BorderRadius.all(
                                Radius.circular(36.0),
                              ),
                            ),
                            child: const Icon(
                              Icons.favorite_border_sharp,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 50,
                          bottom: 40,
                          child: Container(
                            height: 70,
                            width: 220,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(8.0),
                              ),
                              color: Colors.black.withOpacity(0.7),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text.rich(
                                      TextSpan(children: [
                                        TextSpan(
                                          text: 'Mount Fuji, ',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        TextSpan(
                                            text: 'Tokyo',
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ))
                                      ]),
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.location_on_outlined,
                                            color: Colors.grey,
                                            size: 16,
                                          ),
                                          Text(
                                            'Tokyo, Japan',
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Icon(
                                            Icons.star_border,
                                            color: Colors.grey,
                                            size: 16,
                                          ),
                                          Text(
                                            '4.8',
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ])
                                  ]),
                            ),
                          ),
                        ),
                      ]),
                    ]);
                  }),
            ),
          ]),
        ),
      ),
    );
  }
}
