import 'dart:convert';

import "package:flutter/material.dart";
import 'package:http/http.dart' as http;

import 'package:learning/API%20Uses/Model/product_modal.dart';

class PorductDetails extends StatefulWidget {
  const PorductDetails({super.key});

  @override
  State<PorductDetails> createState() => _PorductDetailsState();
}

class _PorductDetailsState extends State<PorductDetails> {
  Future<ProductModal> getProductApi() async {
    final response =
        await http.get(Uri.parse('https://dummyjson.com/products/1'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return ProductModal.fromJson(data);
    } else {
      return ProductModal.fromJson(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<ProductModal>(
                future: getProductApi(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.separated(
                        separatorBuilder: ((context, index) => const Divider()),
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height * 3,
                                width: MediaQuery.of(context).size.width * 1,
                                color: Colors.limeAccent,
                                child: ListView.builder(
                                    itemCount: snapshot
                                        .data!.data![index].images!.length,
                                    itemBuilder: (context, position) {
                                      return Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .25,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .5,
                                        decoration: BoxDecoration(
                                            color: Colors.indigoAccent,
                                            image: DecorationImage(
                                                image: NetworkImage(snapshot
                                                    .data!
                                                    .data![index]
                                                    .images![position]
                                                    .url
                                                    .toString()))),
                                      );
                                    }),
                              )
                            ],
                          );
                        });
                  } else {
                    return const CircularProgressIndicator();
                  }
                }),
          )
        ],
      ),
    );
  }
}
