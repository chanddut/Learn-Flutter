import 'package:flutter/material.dart';
import 'package:flutter_application_1/faker.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Date Format"),
        ),
        body: Center(
          child: Text(
            DateFormat.yMMMd().add_jm().format(DateTime.now()),
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}
