import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:auto_size_text/auto_size_text.dart';
import 'sizeConstraints.dart';
import 'device.dart';

class AboutUsPage extends StatefulWidget {
  @override
  _AboutUsPageState createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Device.backroundCOLOR,
      child: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(
              SizeConstraint.edgeInsets / 2.0,
            ),
            child: Container(
              height: 360,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/logo/logo.png"),
                    fit: BoxFit.contain),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(
              SizeConstraint.edgeInsets,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  SizeConstraint.borderRadius,
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  createText("\nAbout the Museum", EdgeInsets.zero, 24.0,
                      FontWeight.bold),
                  Divider(
                    height: 40,
                    thickness: 2.0,
                    color: Colors.black,
                  ),
                  createText(
                      "The Fort MacArthur Museum is dedicated to the " +
                          "preservation and interpretation of the history " +
                          "of Fort MacArthur, a U.S. Army post which guarded" +
                          " the Los Angeles harbor from 1914 to 1974. The " +
                          "Museum was established in 1985, and it is housed" +
                          " in the corridors and galleries of historic" +
                          " Battery Osgood-Farley. The Fort MacArthur" +
                          " Reservations hold an important collection of" +
                          " historical structures which were part of the U.S." +
                          " Army's role in the defense of the American" +
                          " continental coastline from invasion. These" +
                          " structures clearly trace the development of" +
                          " American coastal defenses, from the all big gun" +
                          " era of the turn of the century to the missile " +
                          "era of today.\n\n" +
                          "The rooms, galleries and corridors of the" +
                          " Museum contain a variety of exhibits and" +
                          " displays which include: the history of " +
                          "Los Angeles harbor defenses, home-front " +
                          "activities in the greater Los Angeles area " +
                          "during the World Wars, Civil Defense, " +
                          "American Pacific Theater military campaigns, " +
                          "early American Air Defenses and the important " +
                          "role of Los Angeles as a military port for " +
                          "both the Army and the Navy.\n",
                      EdgeInsets.zero,
                      16.0,
                      FontWeight.bold),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  createText(text, padding, fontSize, fontWeight) {
    return Padding(
        padding: padding,
        child: AutoSizeText(text,
            maxLines: 30,
            style: TextStyle(
                color: Colors.black,
                fontSize: fontSize,
                fontWeight: fontWeight),
            textAlign: TextAlign.center));
  }

// Creates an image with an optional circular borderRadius
  createAssetImage(path, borderRadius, padding, function) {
    if (null != function) {
      return Padding(
          padding: padding,
          // Using ClipRRect allows us to have Images with Rounded edges.
          child: GestureDetector(
              onTap: function,
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(SizeConstraint.borderRadius),
                child: Image.asset(path, fit: BoxFit.cover),
              )));
    }
    // if the function is null, return a regular image instead
    return Padding(
        padding: padding,
        // Using ClipRRect allows us to have Images with Rounded edges.
        child: ClipRRect(
          borderRadius: BorderRadius.circular(SizeConstraint.borderRadius),
          child: Image.asset(path, fit: BoxFit.cover),
        ));
  }
}

// Creates a text element with padding

