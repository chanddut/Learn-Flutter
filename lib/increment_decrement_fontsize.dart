import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Increment Font Size Apps"), //
        ),
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Text(
            counter.toString(),
            style: TextStyle(fontSize: 50 + double.parse(counter.toString())),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.all(10))),
                  onPressed: () {
                    if (counter != 1) {
                      setState(() {
                        counter--;
                      });
                    }
                  },
                  child: Column(
                    children: [
                      Text("Decrease"),
                      Icon(Icons.remove),
                    ],
                  )),
              ElevatedButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.all(10))),
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                child: Column(
                  children: [
                    Text("Increase"),
                    Icon(Icons.add),
                  ],
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
