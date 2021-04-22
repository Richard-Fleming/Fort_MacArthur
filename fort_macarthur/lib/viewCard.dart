import 'package:flutter/material.dart';
import 'package:fort_macarthur/sizeConstraints.dart';
import 'device.dart';

class ViewCard extends StatelessWidget {
  final String imgSrc, title, subtitle, desc;
  final Function()? action;
  const ViewCard(
      {Key? key,
      required this.imgSrc,
      required this.title,
      required this.subtitle,
      required this.desc,
      this.action})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Device.backroundCOLOR,
          title: Text(
            this.title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Align(
            alignment: Alignment.center,
            child: ListView(children: <Widget>[
              Container(
                  child: GestureDetector(
                      onTap: action, child: Image.asset(imgSrc))),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.fromLTRB(SizeConstraint.edgeInsets, 10,
                      SizeConstraint.edgeInsets, 0),
                  child: Text(
                    title,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(SizeConstraint.edgeInsets, 0,
                          SizeConstraint.edgeInsets, 0),
                      child: Text(
                        subtitle,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.all(SizeConstraint.edgeInsets),
                    child: Text(
                      desc,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ])));
  }
}
