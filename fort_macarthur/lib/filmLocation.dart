import 'package:flutter/material.dart';
import 'package:fort_macarthur/sizeConstraints.dart';
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
        body: Container(
            alignment: Alignment.center,
            child: ListView(children: <Widget>[
              createText(
                  "\nFilm, Television and Photography at the Fort MacArthur Museum\n",
                  EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
                  20.0,
                  FontWeight.bold),
              createText(
                  "Since 1933, Fort MacArthur has been the go to location for filming in Southern California\n\n" +
                      "Fort MacArthur has an association with the entertainment industry that goes back over 75 years. From the earliest 'talkies' through the latest adventures films, we've been happy and proud to work with you on your feature film, commercial, television, music video or photo shoot.\n\n" +
                      "With our varied terrain, spectacular ocean views and historic military structures, we can provide you with a space that meets your exact needs, and a staff that has a long history of working with production crews to support turning your vision into reality. From underground bunkers to grassy fields, the Fort is a great place to shoot any number of scenes.\n\n" +
                      "Located a mere 26 miles from downtown Hollywood, less than 20 miles from LAX and Long Beach airport, and with easy access from the rest of Southern California, Fort MacArthur is an extremely convenient location to use. And we are well within the 30-Mile Studio Zone.\n\n" +
                      "As a working US Army Coastal Defense location from 1914 to 1974, Fort MacArthur can provide the right environment for military shows from WWI, WWII, Korea & Vietnam. But the Fort shouldn't be typecast as a military facility. In fact we've been seen as everything from a baseball field to a Caribbean island to a high security prison. With the acreage that we have available, we can accommodate most requirements for both day and night shoots.\n\n" +
                      "And locations aren't all that we can provide. We have a dozen vehicles in our military vehicle collection ranging from a 1918 FWD Cargo Truck to a WWII Half Track, all completely operable. Add to that a set of 1942 GE & Sperry 60'' Searchlights and generators, along with their companion 3-man 40mm mobile anti aircraft gun. And we are constantly working on restoring new purchases and donations so the list continues to grow.\n\n" +
                      "Beyond the vehicle and mobile equipment collection, Fort MacArthur can also provide genuine period uniforms, non-firing weapons, tents, small props and consulting expertise for your productions.\n\n" +
                      "For more information or to schedule a production on site, please contact Steve Nelson at director@ftmac.org.\n",
                  EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
                  16.0,
                  FontWeight.normal),
            ])));
  }
}

// Creates a text element with padding
createText(text, padding, fontSize, fontWeight) {
  return Padding(
      padding: padding,
      child: SelectableText(text,
          scrollPhysics: NeverScrollableScrollPhysics(),
          style: TextStyle(
              color: Colors.black, fontSize: fontSize, fontWeight: fontWeight),
          textAlign: TextAlign.center));
}
