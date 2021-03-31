import 'package:flutter/material.dart';
import 'size_config.dart';
import 'size_config.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: SizeConfig.backroundCOLOR,
        body: SafeArea(
            child: Container(
                padding: EdgeInsets.all(20.0),
                child: Column(children: <Widget>[
                  Container(
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage("assets/logo/logo.png"),
                          fit: BoxFit.contain),
                    ),
                  )
                ]))));
  }
}
