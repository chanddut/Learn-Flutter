import 'package:flutter/material.dart';
import 'package:flutter_application_1/dismissible.dart';

void main() {
  runApp(MyPage());
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: Drawer(
        child: Text(
          "Some Text Here",
          style: TextStyle(fontSize: 35),
        ),
      ),
      body: Center(
          child: Text(
        "Some Text Here",
        style: TextStyle(fontSize: 35),
      )),
    );
  }
}
