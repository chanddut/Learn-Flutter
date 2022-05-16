import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool statusSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Switch")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.blueGrey,
            // height: 100,
            width: 100,
            child: Switch(
                activeColor: Colors.lightBlue,
                inactiveTrackColor: Colors.pink,
                activeTrackColor: Colors.yellow,
                inactiveThumbColor: Colors.indigo,
                activeThumbImage:
                    AssetImage("images/smiley-4836178_960_720.webp"),
                inactiveThumbImage: AssetImage("images/images.jpg"),
                value: statusSwitch,
                onChanged: (value) {
                  setState(() {
                    statusSwitch = !statusSwitch;
                  });
                  print(statusSwitch);
                }),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            (statusSwitch == true) ? "Switch On" : "Switch Off",
            style: TextStyle(
              fontSize: 35,
            ),
          )
        ],
      )),
    );
  }
}
