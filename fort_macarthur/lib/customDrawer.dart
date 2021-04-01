import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'customListTiles.dart';

class CustomDrawer extends StatelessWidget {
  final String title;
  final String imagePATH;

  CustomDrawer(this.title, this.imagePATH);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: <Color>[Colors.deepOrange, Colors.orangeAccent])),
            child: Container(
              child: Column(
                children: <Widget>[
                  Material(
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    elevation: 10,
                    child: Image.asset(
                      imagePATH,
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(title,
                        style: TextStyle(color: Colors.white, fontSize: 20.0)),
                  )
                ],
              ),
            ),
          ),
          CustomListTiles(Icons.home, 'Home', () => {}),
          CustomListTiles(Icons.article, 'Articles', () => {}),
          CustomListTiles(Icons.tour, 'Virtual Tours', () => {}),
          CustomListTiles(Icons.bookmarks, 'About us', () => {})
        ],
      ),
    );
  }
}
