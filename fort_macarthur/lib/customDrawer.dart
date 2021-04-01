import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fort_macarthur/homepage.dart';
import 'testpage.dart';
import 'customListTiles.dart';

class PageRoutes {
  static const String home = '/homepage';
  static const String test = '/testpage';
}

class CustomDrawer extends StatelessWidget {
  final String title;
  final int currentPage;
  CustomDrawer(this.title, this.currentPage);

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
                      "assets/images/battery.png",
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
          CustomListTiles(
              Icons.home,
              'Home',
              () => {
                    if (currentPage != 0)
                      {
                        Navigator.pushReplacement(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new HomePage()))
                      }
                  }),
          CustomListTiles(
              Icons.article,
              'Articles',
              () => {
                    if (currentPage != 1)
                      {
                        Navigator.pushReplacement(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new TestPage()))
                      }
                  }),
          CustomListTiles(Icons.tour, 'Virtual Tours', () => {}),
          CustomListTiles(Icons.bookmarks, 'About us', () => {})
        ],
      ),
    );
  }
}
