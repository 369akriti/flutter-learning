import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'Container',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          width: MediaQuery.sizeOf(context).width * 1,
          height: MediaQuery.sizeOf(context).height / 3,
          padding: const EdgeInsets.all(100),
          margin: const EdgeInsets.all(100),
          decoration: const BoxDecoration(
              border: Border.fromBorderSide(BorderSide(color: Colors.black87)),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/img_2.jpg"))),
          alignment: Alignment.center,
          child: const Text('Three Muskeeters'),
        ));
  }
}
