import 'package:flutter/material.dart';
import 'package:fort_macarthur/posthistoryview.dart';
import 'package:fort_macarthur/educationpage.dart';
import 'homepage.dart';

import 'filmLocation.dart';
import 'customDrawer.dart';
import 'aboutus.dart';
import 'package:fort_macarthur/virtual_tours.dart';
import 'package:fort_macarthur/projects.dart';

class Viewpage extends StatefulWidget {
  @override
  _ViewPageState createState() => _ViewPageState();
}

class _ViewPageState extends State<Viewpage> {
  int index = 0;
  List<String> titleBar = [
    "Home",
    "Virtual Tours",
    "Film Location",
    "Projects",
    "Get Educated",
    "Post History",
    "About Us",
  ];
  List<Widget> pagelist = [
    HomePage(),
    VirtualTours(),
    FilmLocation(),
    ProjectsPage(),
    EducationPage(),
    PostHistoryPage(),
    AboutUsPage(),
  ]; // add your pages here

  @override
  Widget build(BuildContext content) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.lightGreen[900],
        accentColor: Colors.lightGreen[900],
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(titleBar[index]),
        ),
        body: pagelist[index],
        drawer: CustomDrawer(
          (context, i) => {
            setState(() {
              index = i;
              Navigator.pop(context);
            })
          },
        ),
      ),
    );
  }
}
