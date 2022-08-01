import 'dart:html';

import 'package:dio/dio.dart';
import 'package:firstapp/repositories/home_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/Categories.dart';

homeRepository _homeRepo = homeRepository();

final categoryProvider = FutureProvider((ref) => _homeRepo.getRepositories());
List<Categories> categoriesData = [];

class homePage extends ConsumerWidget {
  Color myPurple = Color.fromARGB(255, 127, 82, 131);
  Color myTape = Color.fromARGB(255, 166, 209, 230);
  Color myBackGround = Color.fromARGB(255, 254, 251, 246);
  Color myBlack = Color.fromARGB(255, 61, 60, 66);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<Response> categories = ref.watch(categoryProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: myPurple,
        title: Text(
          'eHandy',
          style: TextStyle(color: myBlack),
        ),
        centerTitle: true,
      ),
      backgroundColor: myBackGround,
      body: Container(
        child: Column(
          children: [
            categories.when(
                data: (Response) {
                  categoriesData.clear();
                  var result = Response.data;
                  print(Response);
                  for (var element in (result as List)) {
                    categoriesData.add(Categories.fromJson(element));
                  }
                  return Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        height: 110,
                        child: ListView.builder(
                          itemCount: categoriesData.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, int index) {
                            return Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: CircleAvatar(
                                    radius: 36,
                                    backgroundImage: NetworkImage(
                                        categoriesData[index].image!),
                                  ),
                                ),
                                Text(
                                  categoriesData[index].name!,
                                  style: TextStyle(color: myBlack),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                      Container(
                        height: 15,
                        color: myTape,
                      ),
                      Container(
                          height: 250,
                          child: ListView.builder(
                            itemCount: 5,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, int index) {
                              return Stack(
                                alignment: AlignmentDirectional.topCenter,
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(1),
                                    height: 250,
                                    width: 380,
                                    child: Image.network(
                                        categoriesData[index].image!),
                                  ),
                                  Container(
                                      height: 250,
                                      width: 318,
                                      padding: EdgeInsets.all(4),
                                      margin: EdgeInsets.all(2),
                                      color: myBlack.withOpacity(0.1),
                                      alignment:
                                          AlignmentDirectional.bottomCenter,
                                      child: Text(
                                        'hello Google DSC - UOITC',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      )),

                                  // Positioned(
                                  //     top: 120,
                                  //     left: 40,
                                  //     child: Text('hello Google DSC - UOITC'))
                                  // Align(
                                  //   alignment: Alignment.center,
                                  //   widthFactor: 380,
                                  //   child: Text('hello Google DSC - UOITC'),
                                  // )
                                  ElevatedButton(
                                      onPressed: () {}, child: Text('50% '))
                                ],
                              );
                            },
                          ))
                    ],
                  );
                },
                error: (err, stack) => Text('Error: $err'),
                loading: () {
                  return CircularProgressIndicator();
                }),
          ],
        ),
      ),
    );
  }
}
