import 'package:flutter/material.dart';
import 'package:fort_macarthur/device.dart';
import 'device.dart';
import 'post_history.dart';

class PostHistoryPage extends StatefulWidget {
  @override
  _PostHistoryState createState() => _PostHistoryState();
}

class _PostHistoryState extends State<PostHistoryPage> {
  List<String> phTitles = [
    "Battery Osgood",
    "Battery Leary Merriam",
    "Battery Barlow - Saxton",
    "Battery Lodor",
    "Battery Erwin",
    "Battery Eubanks",
    "Battery 127 (Paul D Bunker)",
    "Battery 128",
    "Battery 240 (Harry C. Barnes)",
    "Battery 241",
    "Battery 242 (Harry J Harrison)",
    "90mm AMTB",
    "155 GPF Mobile Guns",
    "Anti-Aircraft (Fixed and Mobile)",
  ];
  List<String> phImages = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Device.init();

    return Scaffold(
        backgroundColor: Device.backroundCOLOR,
        body: Container(
            alignment: Alignment.center,
            child: ListView(children: <Widget>[
              createDouble(phTitles[0], "assets/images/batteryOsgood.jpg",
                  phTitles[1], "assets/images/batteryOsgood.jpg"),
              createDouble(phTitles[2], "assets/images/batteryOsgood.jpg",
                  phTitles[3], "assets/images/batteryOsgood.jpg"),
              createDouble(phTitles[4], "assets/images/batteryOsgood.jpg",
                  phTitles[5], "assets/images/batteryOsgood.jpg"),
              createDouble(phTitles[6], "assets/images/batteryOsgood.jpg",
                  phTitles[7], "assets/images/batteryOsgood.jpg"),
              createDouble(phTitles[8], "assets/images/batteryOsgood.jpg",
                  phTitles[9], "assets/images/batteryOsgood.jpg"),
              createDouble(phTitles[10], "assets/images/batteryOsgood.jpg",
                  phTitles[11], "assets/images/batteryOsgood.jpg"),
              createDouble(phTitles[12], "assets/images/batteryOsgood.jpg",
                  phTitles[13], "assets/images/batteryOsgood.jpg"),
            ])));
  }

  createCard(title, mainImage) {
    return Container(
        width: Device.width / 5.3,
        height: Device.height / 8.5,
        child: Card(
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              createOverlay(title, mainImage);
            },
            child: Column(
              children: [
                Image.asset(mainImage, fit: BoxFit.fitWidth),
                Text(
                  title,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ));
  }

  createOverlay(title, mainImage) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                PostHistoryView(title: title, mainImage: mainImage)));
  }

  createDouble(titleOne, imageOne, titleTwo, imageTwo) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          createCard(titleOne, imageOne),
          createCard(titleTwo, imageTwo),
        ]);
  }

  createText(text, padding, fontSize, fontWeight) {
    return Padding(
        padding: padding,
        child: SelectableText(text,
            scrollPhysics: NeverScrollableScrollPhysics(),
            style: TextStyle(
                color: Colors.black,
                fontSize: fontSize,
                fontWeight: fontWeight),
            textAlign: TextAlign.center));
  }
}
