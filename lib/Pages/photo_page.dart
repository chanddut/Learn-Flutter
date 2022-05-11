import 'package:flutter/material.dart';

class PhotoPage extends StatelessWidget {
  static const routeName = '/photopage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Photo page")),
      body: Center(
          child: Text(
        "Photo Page",
        style: TextStyle(fontSize: 50),
      )),
    );
  }
}
