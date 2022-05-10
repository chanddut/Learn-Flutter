import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final Faker faker = Faker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dismissible"),
      ),
      body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(),
              title: Text(faker.person.name()),
              subtitle: Text(faker.lorem.sentence()),
            );
          }),
    );
  }
}
