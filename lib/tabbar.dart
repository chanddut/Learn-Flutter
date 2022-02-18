import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Tab> myTab = [
    Tab(
      text: "Tab 1",
      icon: Icon(Icons.add_a_photo),
    ),
    Tab(
      text: "Tab 2",
      icon: Icon(Icons.local_airport_outlined),
    ),
    Tab(
      text: "Tab 3",
      icon: Icon(Icons.shopping_bag),
    ),
    Tab(
      text: "Tab 4",
      icon: Icon(Icons.mail_outline),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: myTab.length,
        child: Scaffold(
          appBar: AppBar(
            flexibleSpace: Container(
              height: 1000,
              color: Colors.purple,
            ),
            title: Text("My Apps"),
            bottom: TabBar(
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black26,
              indicator: BoxDecoration(
                color: Colors.pink,
                border: Border(
                  bottom: BorderSide(color: Colors.black, width: 3),
                ),
              ),
              tabs: myTab,
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text(
                  "Halo",
                  style: TextStyle(fontSize: 40),
                ),
              ),
              Center(
                child: Text(
                  "Chandra",
                  style: TextStyle(fontSize: 40),
                ),
              ),
              Center(
                child: Text(
                  "Ganteng",
                  style: TextStyle(fontSize: 40),
                ),
              ),
              Center(
                child: Text(
                  "yahah",
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
