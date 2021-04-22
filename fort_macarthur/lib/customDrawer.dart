import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'customListTiles.dart';

class CustomDrawer extends StatelessWidget {
  final Function action;

  CustomDrawer(this.action);

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
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.0),
                    ),
                    elevation: 10,
                    child: Image.asset(
                      "assets/images/battery.png",
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      "test",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  )
                ],
              ),
            ),
          ),
          //add your page to the list
          CustomListTiles(
            Icons.home,
            'Home',
            () => action(
              context,
              0,
            ),
          ),
          CustomListTiles(
            Icons.article,
            'Articles',
            () => action(context, 1),
          ),
          CustomListTiles(
            Icons.tour,
            'Virtual Tours',
            () => action(context, 2),
          ),
          CustomListTiles(
            Icons.bookmarks,
            'About us',
            () => action(context, 3),
          ),
          CustomListTiles(
            Icons.cast_for_education,
            'Get Educated',
            () => action(context, 4),
          )
        ],
      ),
    );
  }
}
