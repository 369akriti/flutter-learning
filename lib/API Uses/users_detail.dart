import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:learning/API%20Uses/Model/user_modal.dart';

class UsersDetail extends StatefulWidget {
  const UsersDetail({super.key});

  @override
  State<UsersDetail> createState() => _UsersDetailState();
}

class _UsersDetailState extends State<UsersDetail> {
  List<UserModal> userList = [];
  Future<List<UserModal>> getNewApi() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    var data = jsonDecode(response.body) as List;
    if (response.statusCode == 200) {
      for (Map i in data) {
        userList.add(UserModal.fromJson(i as Map<String, dynamic>));
      }
      return userList;
    } else {
      return userList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        title: const Center(child: Text("Getting User's Details from Api")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                  future: getNewApi(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return const Center(child: CircularProgressIndicator());
                    } else {
                      return ListView.builder(
                          itemCount: userList.length,
                          itemBuilder: (context, index) {
                            return Dismissible(
                              key: ValueKey(userList[index].id),
                              direction: DismissDirection.startToEnd,
                              // confirmDismiss: (direction) async {
                              //   final result = await showDialog(
                              //       context: context,
                              //       builder: (context) => const DeleteNote());

                              //   return result ?? false;
                              // },
                              background: Container(
                                decoration: BoxDecoration(
                                    color: Colors.redAccent,
                                    borderRadius: BorderRadius.circular(8)),
                                child: const Align(
                                  alignment: Alignment.centerLeft,
                                  child: AnimatedIcon(
                                    icon: AnimatedIcons.pause_play,
                                    progress: kAlwaysCompleteAnimation,
                                  ),
                                ),
                              ),
                              onDismissed: (direction) {
                                setState(() {
                                  userList.removeAt(
                                      index); // Remove item from the list
                                });
                              },
                              child: Card(
                                margin: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 16.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Title\n${userList[index].id}'),
                                      Text(userList[index].name ?? ''),
                                      Text(userList[index].email ?? ''),
                                      Text(userList[index].username ?? ''),
                                      Text(userList[index].website ?? ''),
                                      Text(userList[index].phone ?? ''),
                                      Text(userList[index].address!.city ?? ''),
                                      Text(userList[index].address!.street ??
                                          ''),
                                      Text(
                                          userList[index].address!.suite ?? ''),
                                      Text(userList[index].address!.zipcode ??
                                          ''),
                                      Text(userList[index].address!.geo!.lat!),
                                      Text(userList[index].address!.geo!.lng!),
                                      Text(userList[index].company!.bs!),
                                      Text(userList[index]
                                          .company!
                                          .catchPhrase!),
                                      Text(userList[index].company!.name!),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          });
                    }
                  }),
            )
          ],
        ),
      ),
    );
  }
}
