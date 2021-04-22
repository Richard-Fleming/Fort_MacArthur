import 'package:flutter/material.dart';
import 'package:fort_macarthur/device.dart';
import 'device.dart';
import 'package:url_launcher/url_launcher.dart';

class FilmLocCredits extends StatefulWidget {
  @override
  _FilmLocCreditsState createState() => _FilmLocCreditsState();
}

class _FilmLocCreditsState extends State<FilmLocCredits> {
  double linkSpacing = 15.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Device.init();

    return Scaffold(
        backgroundColor: Device.backroundCOLOR,
        appBar: AppBar(
          backgroundColor: Colors.lightGreen[900]!,
          title: Text(
            "Some of Our Credits",
            style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                fontFamily: "Futura"),
          ),
        ),
        body: ListView(children: [
          createText("Movies", 20.0, FontWeight.bold, Colors.black),
          Divider(height: 25.0, thickness: 2.5, color: Colors.black),
          createLink("A Few Good Men", "http://youtu.be/4AC0wWxadvc", 20.0,
              FontWeight.normal),
          Container(height: linkSpacing),
          createLink("Dragnet", "http://youtu.be/YNiFahsAwJA", 20.0,
              FontWeight.normal),
          Container(height: linkSpacing),
          createLink("Pearl Harbor", "http://youtu.be/Xr6pVUv9cJQ", 20.0,
              FontWeight.normal),
          Container(height: linkSpacing),
          createLink("Cats & Dogs 2", "http://youtu.be/PrPaYUdz7Ks", 20.0,
              FontWeight.normal),
          Container(height: linkSpacing),
          createLink("Private Benjamin", "http://youtu.be/5QtR-Hy0p0E", 20.0,
              FontWeight.normal),
          Container(height: linkSpacing),
          createLink(
              "Crash", "http://youtu.be/f1yXXGXhdkg", 20.0, FontWeight.normal),
          Container(height: linkSpacing),
          createLink("The Usual Suspects", "http://youtu.be/9MjV4EwR7Mg", 20.0,
              FontWeight.normal),
          Container(height: linkSpacing),
          createLink("Don't Mess with the Zohan", "http://youtu.be/jmMXk0bA8gk",
              20.0, FontWeight.normal),
          Container(height: linkSpacing),
          createLink(
              "Midway", "http://youtu.be/PJmw4xN3H6Q", 20.0, FontWeight.normal),
          Container(height: linkSpacing),
          createLink("Tora! Tora! Tora!", "http://youtu.be/I56EnecvVZU", 20.0,
              FontWeight.normal),
          Container(height: linkSpacing),
          createLink("Slaughterhouse Rock", "http://youtu.be/j05WkK8O3Vs", 20.0,
              FontWeight.normal),
          Container(height: linkSpacing),
          createLink("Swing Shift", "http://youtu.be/3_q_ySU8nmo", 20.0,
              FontWeight.normal),
          Container(height: linkSpacing),
          createLink("MacArthur", "http://youtu.be/tesXvzIMWbQ", 20.0,
              FontWeight.normal),
          Container(height: linkSpacing),
          createLink("Brothers War", "http://youtu.be/ETNmeeet41c", 20.0,
              FontWeight.normal),
          Container(height: linkSpacing),
          createLink("Stage Door Canteen", "http://youtu.be/GJsSwMbWhGE", 20.0,
              FontWeight.normal),
          Container(height: linkSpacing),
          createLink("Troopers Three", "http://www.imdb.com/title/tt0021491/",
              20.0, FontWeight.normal),
          Container(height: linkSpacing),
          createLink(
              "O'Hara, U.S. Treasury",
              "http://en.wikipedia.org/wiki/O'Hara,_U.S._Treasury",
              20.0,
              FontWeight.normal),
          Container(height: linkSpacing),
        ]));
  }

  createText(text, fontSize, fontWeight, color) {
    return Text(text,
        style: TextStyle(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
            fontFamily: "Futura"),
        textAlign: TextAlign.center);
  }

  createLink(text, url, fontSize, fontWeight) {
    return InkWell(
        child: createText(text, fontSize, fontWeight, Colors.green[900]),
        onTap: () => launchURL(url));
  }

  void launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
