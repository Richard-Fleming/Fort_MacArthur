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
              Divider(height: 12.5, thickness: 2.5, color: Colors.black),
              Divider(height: 15.5),
              createDoubleImage(
                  "assets/images/view_west_from_top_of_battery.jpg",
                  "assets/images/view_east_from_top_of_battery_to_farley_pit.jpg",
                  EdgeInsets.zero),
              createDoubleText(
                  "View West from\nTop of Battery",
                  "View East from Top\nof Battery to Farley Pit",
                  EdgeInsets.zero),
              Divider(height: 12.5),
              createDoubleImage(
                  "assets/images/view_south_over_field_of_catalina.jpg",
                  "assets/images/view_north_looking_into_battery_courtyard.jpg",
                  EdgeInsets.zero),
              createDoubleText(
                  "View South over\nfield to Catalina",
                  "View North, looking\ninto Battery Courtyard",
                  EdgeInsets.zero),
              Divider(height: 12.5),
              createDoubleImage(
                  "assets/images/walkway_with_view_into_courtyard.jpg",
                  "assets/images/walkway_towards_stairs_and_access_road.jpg",
                  EdgeInsets.zero),
              createDoubleText("Walkway with view\ninto Courtyard",
                  "Walkway towards Stairs\nand access road", EdgeInsets.zero),
              Divider(height: 12.5),
              createDoubleImage(
                  "assets/images/battery_osgood_commander_station_exterior.jpg",
                  "assets/images/plotting_room_door_in_courtyard.jpg",
                  EdgeInsets.zero),
              createDoubleText("Battery Osgood Commander\nStation Exterior",
                  "Plotting Room door\nin Courtyard", EdgeInsets.zero),
              Divider(height: 12.5),
              createDoubleImage("assets/images/1943_willies_jeep.jpg",
                  "assets/images/1941_dodge_command_car.jpg", EdgeInsets.zero),
              createDoubleText("1943 Willies Jeep", "1941 Dodge Command Car",
                  EdgeInsets.zero),
              Divider(height: 12.5),
              createDoubleImage(
                  "assets/images/1918_dodge_brothers_truck.jpg",
                  "assets/images/1918_dodge_brothers_truck2.jpg",
                  EdgeInsets.zero),
              createDoubleText("1918 Dodge Brothers Truck",
                  "1918 Dodge Brothers Truck", EdgeInsets.zero),
              Divider(height: 12.5),
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

createDoubleImage(firstImage, secondImage, padding) {
  return Container(
      height: 145.0,
      padding: padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 4,
                ),
              ),
              child: Image.asset(firstImage)),
          Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 4,
                ),
              ),
              child: Image.asset(secondImage)),
        ],
      ));
}

createDoubleText(firstString, secondString, padding) {
  return Container(
      height: 40.0,
      padding: padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          createText(firstString, padding, 14.0, FontWeight.w400),
          createText(secondString, padding, 14.0, FontWeight.w400),
        ],
      ));
}
