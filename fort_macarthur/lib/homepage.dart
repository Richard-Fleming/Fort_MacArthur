import 'package:flutter/material.dart';
import 'size_config.dart';
import 'flutter_device_type.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //Get the physical device size
    print(Device.size);
//Quick methods to access the physical device width and height
    print("Device Width: ${Device.width}, Device Height: ${Device.height}");

//To get the actual screen size (Which is same as what MediaQuery gives)
    print(Device.screenSize);

    print(MediaQuery.of(context));
//Quick methods to access the screen width and height
    print(
        "Device Width: ${Device.screenWidth}, Device Height: ${Device.screenHeight}");

//Check if device is tablet
    if (Device.get().isTablet) {
      print("Tablet");
    }

//Check if device is at least an iphone x
// NOTE: This detects up to Iphone 12 pro max
    if (Device.get().isIphoneX) {
      print("IphoneX");
    }

// For a generic notch test use
    if (Device.get().hasNotch) {
      print("hasNotch");
    }
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
                  )
                ]))));
  }
}
