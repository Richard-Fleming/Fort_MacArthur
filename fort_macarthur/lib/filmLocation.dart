import 'package:flutter/material.dart';
import 'dart:async';
import 'viewpage.dart';
import 'package:fort_macarthur/device.dart';
import 'device.dart';

class FilmLocation extends StatefulWidget {
  @override
  _FilmLocationState createState() => _FilmLocationState();
}

class _FilmLocationState extends State<FilmLocation> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Device.init();
    return Scaffold(
      backgroundColor: Device.backroundCOLOR,
      body: Center(
        child: Image.asset('assets/logo/logo.png'),
      ),
    );
  }
}
