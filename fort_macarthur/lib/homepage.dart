import 'package:flutter/material.dart';
import 'device.dart';
import 'sizeConstraints.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Device.backroundCOLOR,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(SizeConstraint.edgeInsets),
          child: Column(
            children: <Widget>[
              Container(
                height: Device.safeBlockVertical * 50,
                width: Device.safeBlockHorizontal * 100,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(SizeConstraint.borderRadius),
                  image: DecorationImage(
                      image: AssetImage("assets/logo/logo.png"),
                      fit: BoxFit.contain),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
