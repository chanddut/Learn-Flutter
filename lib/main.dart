import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   List<Tab> myTab = [
//     Tab(
//       text: "Tab 1",
//       icon: Icon(Icons.add_a_photo),
//     ),
//     Tab(
//       text: "Tab 2",
//       icon: Icon(Icons.local_airport_outlined),
//     ),
//     Tab(
//       text: "Tab 3",
//       icon: Icon(Icons.shopping_bag),
//     ),
//     Tab(
//       text: "Tab 4",
//       icon: Icon(Icons.mail_outline),
//     ),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DefaultTabController(
//         length: myTab.length,
//         child: Scaffold(
//           appBar: AppBar(
//             flexibleSpace: Container(
//               height: 1000,
//               color: Colors.purple,
//             ),
//             title: Text("My Apps"),
//             bottom: TabBar(
//               labelStyle: TextStyle(fontWeight: FontWeight.bold),
//               unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
//               labelColor: Colors.white,
//               unselectedLabelColor: Colors.black26,
//               indicator: BoxDecoration(
//                 color: Colors.pink,
//                 border: Border(
//                   bottom: BorderSide(color: Colors.black, width: 3),
//                 ),
//               ),
//               tabs: myTab,
//             ),
//           ),
//           body: TabBarView(
//             children: [
//               Center(
//                 child: Text(
//                   "Halo",
//                   style: TextStyle(fontSize: 40),
//                 ),
//               ),
//               Center(
//                 child: Text(
//                   "Chandra",
//                   style: TextStyle(fontSize: 40),
//                 ),
//               ),
//               Center(
//                 child: Text(
//                   "Ganteng",
//                   style: TextStyle(fontSize: 40),
//                 ),
//               ),
//               Center(
//                 child: Text(
//                   "yahah",
//                   style: TextStyle(fontSize: 40),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Fitur Text Field"),
//         ),
//         body: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(20),
//             child: TextField(
//               // Fitur
//               enabled: true,
//               autocorrect: true,
//               autofocus: true,
//               enableInteractiveSelection: true,
//               obscureText: true,
//               obscuringCharacter: "*",
//               keyboardType: TextInputType.phone,
//               readOnly: false,

//               // Decoration
//               autocorrect: false,
//               showCursor: true,
//               cursorColor: Colors.grey,
//               cursorHeight: 25,
//               cursorWidth: 3,
//               cursorRadius: Radius.circular(20),
//               obscureText: true,

//               textAlign: TextAlign.start,
//               textAlignVertical: TextAlignVertical.center,
//               textCapitalization: TextCapitalization.words,
//               style: TextStyle(fontSize: 20),

//               decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.grey)),
//                   enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.black)),
//                   prefixIcon: Icon(
//                     Icons.person,
//                     size: 35,
//                   ),
//                   suffixIcon: Icon(Icons.remove_red_eye),
//                   // prefixText: "username : ",
//                   labelText: "Username",
//                   hintText: "Please insert your username"),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   final TextEditingController myController = TextEditingController();

//   String hasil = "Hasil Input";

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Text Field"),
//         ),
//         body: Center(
//             child: Padding(
//           padding: const EdgeInsets.all(25),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               TextField(
//                 controller: myController,
//                 onChanged: (value) {
//                   print("ONCHANGED");
//                 },
//                 onSubmitted: (value) {
//                   print(value);
//                   setState(() {
//                     hasil = value;
//                   });
//                 },
//                 onEditingComplete: () {
//                   print("Edit Success");
//                   print(myController.text);
//                 },
//               ),
//               Text(hasil)
//             ],
//           ),
//         )),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   final List<Container> myList = List.generate(90, (index) {
//     return Container(
//       color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256),
//           Random().nextInt(256)),
//     );
//   });

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Grid View"),
//           centerTitle: true,
//         ),
//         body: // GridView(
//             //   padding: EdgeInsets.all(10),
//             //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             //     crossAxisCount: 3,
//             //     mainAxisSpacing: 10,
//             //     crossAxisSpacing: 10,
//             //     childAspectRatio: 4 / 3,
//             //   ),
//             //  children: myList,

//             //Easiest Way
//             GridView.count(
//           crossAxisCount: 3,
//           mainAxisSpacing: 10,
//           crossAxisSpacing: 10,
//           childAspectRatio: 4 / 3,
//           padding: EdgeInsets.all(10),
//           children: myList,
//         ),
//       ),
//     );
//   }
// }

// Buat Dialog
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String data = "Belum ada input";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Decoration"),
      ),
      body: Center(
          child: Text(
        data,
        style: TextStyle(fontSize: 35),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Telah Di klik");
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text(
                    "Confirm Exit",
                    textAlign: TextAlign.center,
                  ),
                  content: Text("Are you sure want to delete this item ?"),
                  actions: [
                    TextButton(
                        onPressed: () {
                          setState(() {
                            data = "False";
                          });
                          Navigator.of(context).pop();
                        },
                        child: Text("No")),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            data = "True";
                          });
                          Navigator.of(context).pop();
                        },
                        child: Text("Yes")),
                  ],
                );
              });
        },
        child: Icon(Icons.delete),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//       initialRoute: HomePage.routeName,
//       routes: {
//         HomePage.routeName: (context) => HomePage(),
//         GalleryPage.routeName: (context) => GalleryPage(),
//         PhotoPage.routeName: (context) => PhotoPage()
//       },
//     );
//   }
// }

