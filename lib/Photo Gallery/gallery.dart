import 'package:flutter/material.dart';

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Travel'),
          backgroundColor: const Color.fromARGB(255, 139, 40, 169),
          foregroundColor: Colors.white,
        ),
        drawer: const Drawer(
          backgroundColor: Colors.white,
          child: Column(
            children: [
              ListTile(
                leading: Text(
                  'Camera',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
              ),
              ListTile(
                leading: Icon(Icons.photo_library),
                title: Text('All photos'),
              ),
              ListTile(
                leading: Icon(Icons.people),
                title: Text('Shared with me'),
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text('Starred'),
              ),
              ListTile(
                leading: Icon(Icons.access_time),
                title: Text('Recent'),
              ),
              Divider(),
              ListTile(
                leading: Text(
                  'Collections',
                  style: TextStyle(
                      color: Color.fromARGB(255, 144, 142, 142),
                      fontSize: 15.0),
                ),
              ),
              ListTile(
                leading: Icon(Icons.bookmark),
                title: Text('Baseball'),
              ),
              ListTile(
                leading: Icon(Icons.bookmark),
                title: Text('Jazz Events'),
              ),
              ListTile(
                leading: Icon(Icons.bookmark),
                title: Text('New Year\'s Eve 2018'),
              )
            ],
          ),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 0.6,
                height: MediaQuery.sizeOf(context).height / 3,
                padding: const EdgeInsets.fromLTRB(5.0, 10.0, 10.0, 5.0),
                decoration: const BoxDecoration(
                    border: Border.fromBorderSide(
                        BorderSide(color: Colors.black87)),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/img2.jpg"))),
              ),
              
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 0.4,
                height: MediaQuery.sizeOf(context).height / 3,
                padding: const EdgeInsets.fromLTRB(5.0, 10.0, 10.0, 5.0),
                child: Image.asset(
                  'assets/images/img2.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 0.6,
                height: MediaQuery.sizeOf(context).height / 3,
                padding: const EdgeInsets.fromLTRB(5.0, 10.0, 10.0, 5.0),
                // color: Colors.red,
                child: Image.asset(
                  'assets/images/img2.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          )
        ]));
  }
}
