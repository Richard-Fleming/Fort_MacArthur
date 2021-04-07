import 'package:flutter/material.dart';
import 'device.dart';

class TestPage extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Device.backroundCOLOR,
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
                ),
                Text(
                  "Test",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                )
              ]))),
    );
  }
}
