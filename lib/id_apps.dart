import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> myList = [
    {
      "Name": "Chandra",
      "Age": 23,
      "favColor": [
        "Black",
        "Red",
        "White",
        "Black",
        "Red",
        "White",
        "Black",
        "Red",
        "White"
      ]
    },
    {
      "Name": "Dodi",
      "Age": 16,
      "favColor": [
        "Orange",
        "Lime",
        "Yellow",
        "Orange",
        "Lime",
        "Yellow",
        "Orange",
        "Lime",
        "Yellow",
      ]
    }
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Id Card"),
        ),
        body: ListView(
            children: myList.map((data) {
          List myfavcolor = data["favColor"];
          return Card(
            margin: EdgeInsets.all(20),
            color: Colors.black.withOpacity(0.001),
            child: Column(children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name ${data['Name']}"),
                            Text("Age ${data['Age']}  ")
                          ],
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: myfavcolor.map((color) {
                          return Container(
                            margin: EdgeInsets.all(10),
                            color: Colors.lightBlue,
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: Text(color),
                          );
                        }).toList(),
                      ),
                    )
                  ],
                ),
              ),
            ]),
          );
        }).toList()),
      ),
    );
  }
}
