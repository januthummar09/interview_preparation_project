import 'package:flutter/material.dart';

import 'data/student_data.dart';
import 'models/student_model.dart';

class ListDemoScreen extends StatefulWidget {
  const ListDemoScreen({Key? key}) : super(key: key);

  @override
  State<ListDemoScreen> createState() => _ListDemoScreenState();
}

class _ListDemoScreenState extends State<ListDemoScreen> {
  List<StudentModel> stdData = StudentData.getData();

  List name = [
    "janki",
    123,
    "kajal",
    "rutik",
    "kinjal",
    "hitali",
  ];

  Map data = {
    "foodName": [
      {
        "name": "pizza",
        "price": 250,
      },
      {
        "name": "Burgr",
        "price": 200,
      },
      {
        "name": "sendwish",
        "price": 100,
      },
      {
        "name": "dosa",
        "price": 150,
      },
    ],
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                child: Text("Name :${name[index]}"),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
            itemCount: name.length,
          ),
          const SizedBox(
            height: 20,
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Card(
                child: Column(
                  children: [
                    Text("Name :${data['foodName'][index]['name']}"),
                    Text("Name :${data['foodName'][index]['price']}"),
                    Text("Name :${data['foodName'][index]['name']}"),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
            itemCount: data['foodName'].length,
          ),
          const SizedBox(
            height: 20,
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Card(
                color: Colors.yellow,
                child: Column(
                  children: [
                    Text("Name :${stdData[index].name}"),
                    Text("Name :${stdData[index].course}"),
                    Text("Name :${stdData[index].age}"),
                    Text("Name :${stdData[index].name}"),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
            itemCount: stdData.length,
          ),
        ],
      ),
    );
  }
}
