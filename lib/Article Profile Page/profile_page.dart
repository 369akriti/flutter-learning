import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Profile',
              style: TextStyle(fontWeight: FontWeight.bold)),
          centerTitle: true,
        ),
        drawer: const Drawer(),
        body: DefaultTabController(
          length: 3,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const SizedBox(
              height: 20,
            ),
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/img_1.jpg'),
              radius: 50,
            ),
            const SizedBox(height: 20),
            const Text(
              'Akriti Rathore',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        '17',
                        style: TextStyle(
                            color: Colors.orange, fontWeight: FontWeight.bold),
                      ),
                      Text('Articles')
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '622 M',
                        style: TextStyle(
                            color: Colors.orange, fontWeight: FontWeight.bold),
                      ),
                      Text('Followers')
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '120',
                        style: TextStyle(
                            color: Colors.orange, fontWeight: FontWeight.bold),
                      ),
                      Text('Following')
                    ],
                  )
                ]),
            const SizedBox(
              height: 20,
            ),
            const TabBar(
              tabs: [
                Tab(
                  text: 'Article',
                ),
                Tab(
                  text: 'All Article',
                ),
                Tab(
                  text: 'Audio Article',
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: TabBarView(children: [
                ListView.builder(
                    itemCount: 100,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: Container(
                          height: 100,
                          width: 60,
                          decoration: BoxDecoration(
                              border: const Border.fromBorderSide(
                                  BorderSide(color: Colors.black87)),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8)),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      "assets/images/img_${index + 1}.jpg"))),
                          alignment: Alignment.center,
                        ),
                        title: const Text(
                          "Sports",
                          style: TextStyle(fontSize: 15, color: Colors.orange),
                        ),
                        subtitle: Text(
                          "$index",
                          style:
                              const TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        trailing: const Icon(Icons.edit),
                      );
                    }),
                ListView.builder(
                    itemCount: 100,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: Container(
                          height: 100,
                          width: 60,
                          decoration: BoxDecoration(
                              border: const Border.fromBorderSide(
                                  BorderSide(color: Colors.black87)),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8)),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      "assets/images/img_${index + 1}.jpg"))),
                          alignment: Alignment.center,
                        ),
                        title: const Text(
                          "Sports",
                          style: TextStyle(fontSize: 15, color: Colors.orange),
                        ),
                        subtitle: Text(
                          "$index",
                          style:
                              const TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        trailing: const Icon(Icons.edit),
                      );
                    }),
                ListView.builder(
                    itemCount: 100,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: Container(
                          height: 100,
                          width: 60,
                          decoration: BoxDecoration(
                              border: const Border.fromBorderSide(
                                  BorderSide(color: Colors.black87)),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8)),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      "assets/images/img_${index + 1}.jpg"))),
                          alignment: Alignment.center,
                        ),
                        title: const Text(
                          "Sports",
                          style: TextStyle(fontSize: 15, color: Colors.orange),
                        ),
                        subtitle: Text(
                          "$index",
                          style:
                              const TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        trailing: const Icon(Icons.edit),
                      );
                    }),
              ]),
            )
          ]),
        ));
  }
}
