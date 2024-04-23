import 'package:flutter/material.dart';
import 'package:learning/Travel%20Places/components/flag_component.dart';
import 'package:learning/Travel%20Places/components/index_component.dart';
import 'package:learning/Travel%20Places/place_description.dart';

class TravelPlaces extends StatelessWidget {
  const TravelPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, top: 40, right: 16),
        child: DefaultTabController(
            length: 4,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ListTile(
                leading: Image.asset('assets/images/four_circle.jpg',
                    height: 40, width: 20),
                trailing: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/img_1.jpg'),
                  radius: 60,
                ),
              ),
              const Text(
                'Best Places For Travel',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
              ),
              Row(
                children: [
                  Text(
                    'Find the best place to visit',
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset('assets/images/img_2.jpg', height: 15, width: 15)
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(180),
                      topRight: Radius.circular(180)),
                  color: Colors.blue,
                ),
                labelColor: Colors.white,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                splashBorderRadius: BorderRadius.only(
                    topLeft: Radius.circular(180),
                    topRight: Radius.circular(180)),
                tabs: [
                  Tab(
                    text: 'All',
                  ),
                  Tab(
                    text: 'Mountain',
                  ),
                  Tab(
                    text: 'Forest',
                  ),
                  Tab(
                    text: 'Desert',
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      'Trending Now',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'See all',
                      style: TextStyle(color: Colors.blue),
                      textAlign: TextAlign.right,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 90,
                      crossAxisSpacing: 20),
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Hero(
                      tag: 'tag-$index',
                      child: InkWell(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const PlaceDescription(
                              index: 'index',
                            ),
                          ),
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(120),
                                      topRight: Radius.circular(120)),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/images/img_${index + 3}.jpg"))),
                            ),
                            FlagComponent(
                              index: index,
                            ),
                            IndexComponent(
                              index: index,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ])),
      ),
    );
  }
}
