import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/photo_page.dart';
import './gallery_page.dart';
import './home_page.dart';

class GalleryPage extends StatelessWidget {
  static const routeName = '/gallerypage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gallery page")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Gallery Page",
            style: TextStyle(fontSize: 50),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "<< Back",
                    style: TextStyle(fontSize: 25),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(PhotoPage.routeName);
                  },
                  child: Text("Next >>", style: TextStyle(fontSize: 25)))
            ],
          )
        ],
      )),
    );
  }
}
