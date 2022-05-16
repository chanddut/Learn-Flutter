import 'package:flutter/material.dart';

void main() {
  runApp(ThemeApp());
}

class ThemeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ThemePage(),
      theme: ThemeData(
          brightness: Brightness.light, //default
          // brightness: Brightness.dark,
          // visualDensity: VisualDensity(horizontal: 4, vertical: 2),
          primarySwatch: Colors.amber,
          textTheme: TextTheme(bodyText2: TextStyle(color: Colors.red)),
          appBarTheme: AppBarTheme(
              color: Colors.red,
              titleTextStyle: TextStyle(color: Colors.yellow, fontSize: 35))),
    );
  }
}

class ThemePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Theme App")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "This is a text",
            style: TextStyle(fontSize: 35),
          ),
          SizedBox(height: 20),
          Text(
            "This is a text",
            style: TextStyle(fontSize: 35),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {},
              child: Text(
                "Button",
                style: TextStyle(fontSize: 35),
              )),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.mediation),
      ),
    );
  }
}
