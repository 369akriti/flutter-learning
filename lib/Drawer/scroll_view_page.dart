import 'package:flutter/material.dart';

class ScrollViewPage extends StatelessWidget {
  const ScrollViewPage({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'Grid View',
                icon: Icon(Icons.grid_on),
              ),
              Tab(
                text: 'List View',
                icon: Icon(Icons.list),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: TabBarView(children: [
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 100,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: MediaQuery.sizeOf(context).width * 1,
                  height: MediaQuery.sizeOf(context).height / 3,
                  decoration: BoxDecoration(
                      border: const Border.fromBorderSide(
                          BorderSide(color: Colors.black87)),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "assets/images/img_${index + 1}.jpg"))),
                  alignment: Alignment.center,
                  child: Text(
                    '$index',
                    style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                );
              },
            ),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/img_${index + 1}.jpg"),
                        radius: 25,
                      ),
                      title: Text(
                        "$index",
                        style: const TextStyle(fontSize: 18),
                      ),
                      subtitle: Text(
                        "$index",
                        style:
                            const TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      trailing: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          border: const Border.fromBorderSide(
                              BorderSide(color: Colors.black87)),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "assets/images/img_${index + 1}.jpg")),
                        ),
                        alignment: Alignment.center,
                      ));
                }),
          ]),
        ),
      ),
    );
  }
}
