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
  List<String> phImages = [
    "assets/images/battery/batteryOsgood.jpg",
    "assets/images/battery/Leary.jpg",
    "assets/images/battery/SaxtonGun.jpg",
    "assets/images/battery/Lodor.jpg",
    "assets/images/battery/Irwin.png",
    "assets/images/battery/Eubanks.jpg",
    "assets/images/battery/127bunker.jpg",
    "assets/images/battery/Battery128.jpg",
    "assets/images/battery/240barnes.jpg",
    "assets/images/battery/241gun.jpg",
    "assets/images/battery/242gun.jpg",
    "assets/images/battery/AMTB.jpg",
    "assets/images/battery/155mmFieldGuns.jpg",
    "assets/images/battery/antiair.jpg",
  ];

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
              createDouble(phTitles[0], phImages[0], phTitles[1], phImages[1]),
              createDouble(phTitles[2], phImages[2], phTitles[3], phImages[3]),
              createDouble(phTitles[4], phImages[4], phTitles[5], phImages[5]),
              createDouble(phTitles[6], phImages[6], phTitles[7], phImages[7]),
              createDouble(phTitles[8], phImages[8], phTitles[9], phImages[9]),
              createDouble(
                  phTitles[10], phImages[10], phTitles[11], phImages[11]),
              createDouble(
                  phTitles[12], phImages[12], phTitles[13], phImages[13]),
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
