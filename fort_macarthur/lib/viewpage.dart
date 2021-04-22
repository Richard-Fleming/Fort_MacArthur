import 'package:flutter/material.dart';
import 'package:fort_macarthur/educationpage.dart';
import 'homepage.dart';
import 'testpage.dart';
import 'customDrawer.dart';
import 'package:fort_macarthur/virtual_tours.dart';

class Viewpage extends StatefulWidget {
  @override
  _ViewPageState createState() => _ViewPageState();
}

class _ViewPageState extends State<Viewpage> {
  int index = 0;
  List<String> titleBar = [
    "Home",
    "Test",
    "Virtual Tours",
    "Test",
    "Get Educated"
  ];
  List<Widget> pagelist = [
    HomePage(),
    TestPage(), // Articles
    VirtualTours(),
    TestPage(), // About us
    EducationPage()
  ]; // add your pages here

  @override
  Widget build(BuildContext content) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text(titleBar[index])),
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
