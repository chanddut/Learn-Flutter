import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/gallery_page.dart';
import 'package:flutter_application_1/Pages/photo_page.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/homepage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Homepage")),
      body: Center(
          child: Text(
        "Home Page",
        style: TextStyle(fontSize: 50),
      )),
      drawer: Drawer(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            height: 150,
            color: Colors.red,
            alignment: Alignment.bottomLeft,
            child: Text(
              "This App",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
          SizedBox(height: 10),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) {
                  return HomePage();
                },
              ));
            },
            leading: Icon(
              Icons.home,
              size: 35,
            ),
            title: Text("Home", style: TextStyle(fontSize: 24)),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) {
                  return GalleryPage();
                },
              ));
            },
            leading: Icon(
              Icons.file_download,
              size: 35,
            ),
            title: Text("Galery", style: TextStyle(fontSize: 24)),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) {
                  return PhotoPage();
                },
              ));
            },
            leading: Icon(
              Icons.photo,
              size: 35,
            ),
            title: Text("Photo", style: TextStyle(fontSize: 24)),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed(GalleryPage.routeName);
          },
          child: Icon(Icons.arrow_right_alt)),
    );
  }
}
