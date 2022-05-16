import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/home_page.dart';
import 'package:flutter_application_1/Pages/model_page.dart';
import 'package:flutter_application_1/appbar_layouting.dart';

void main() {
  runApp(MainModel());
}

class MainModel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ModelPage(),
    );
  }
}
