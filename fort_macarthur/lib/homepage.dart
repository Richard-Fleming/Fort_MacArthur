import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'device.dart';
import 'sizeConstraints.dart';
import 'customCards.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

List<String> imgist = [];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Device.backroundCOLOR,
        body: SingleChildScrollView(
            child: SafeArea(
                child: Container(
          padding: EdgeInsets.all(SizeConstraint.edgeInsets),
          child: Column(children: <Widget>[
            CustomCards(
              "About us!",
              "Our Museum",
              "assets/images/frontpage.jpg",
              'The Fort MacArthur Museum is dedicated to the preservation and interpretation of the history of Fort MacArthur...',
            )
          ]),
        ))));
  }
}
