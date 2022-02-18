import 'package:flutter/material.dart';
import 'package:flutter_application_1/faker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Container(color: Colors.yellow),
          leadingWidth: 100,
          title: Container(
            width: 1000,
            height: 100,
            color: Colors.red,
          ),
          centerTitle: false,
          titleSpacing: 0,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: Container(
              height: 10,
              width: 50,
              color: Colors.black45,
            ),
          ),
          actions: [
            Container(
              width: 100,
              color: Colors.blue,
            ),
          ],
          flexibleSpace: Container(
            height: 2000,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
