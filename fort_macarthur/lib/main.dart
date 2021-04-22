// @dart=2.9
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'homepage.dart';
import 'aboutus.dart';
=======
>>>>>>> master
import 'dart:async';
import 'viewpage.dart';
import 'package:fort_macarthur/device.dart';
import 'device.dart';

void main() => runApp(MaterialApp(
      home: _SplashScreen(),
      debugShowCheckedModeBanner: false,
    ));

class _SplashScreen extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<_SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Viewpage()),
        );
      },
    );
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
