import 'package:flutter/material.dart';
import 'package:learning/Drawer/cart_page.dart';
import 'package:learning/Drawer/container_page.dart';
import 'package:learning/Drawer/scroll_view_page.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
                accountName: Text('Akriti Rathore'),
                accountEmail: Text('akritirathore555@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/img_1.jpg'),
                  radius: 50,
                )),
            ListTile(
              leading: const Icon(Icons.ac_unit),
              title: const Text(
                'Cart',
              ),
              selectedTileColor: const Color.fromARGB(255, 226, 218, 218),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const CartPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.ac_unit),
              title: const Text(
                'Container',
              ),
              selectedTileColor: const Color.fromARGB(255, 226, 218, 218),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ContainerPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.ac_unit),
              title: const Text(
                'Scroll View',
              ),
              selectedTileColor: const Color.fromARGB(255, 226, 218, 218),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ScrollViewPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
