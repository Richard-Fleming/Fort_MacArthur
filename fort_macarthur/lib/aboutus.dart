import 'package:flutter/material.dart';
import 'size_config.dart';

class AboutUsPage extends StatefulWidget {
  @override
  _AboutUsPageState createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: SizeConfig.backroundCOLOR,
        body: Container(
            alignment: Alignment.center,
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(SizeConfig.edgeINSETS),
                  child: Container(
                    height: 300,
                    width: 40,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/logo/logo.png"),
                          fit: BoxFit.contain),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(
                    SizeConfig.edgeINSETS,
                  ),
                  child: IntrinsicHeight(
                      child: Container(
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(SizeConfig.borderRADIUS),
                      color: Colors.white,
                    ),
                    child: ListView(
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        createText("About the Museum", SizeConfig.edgeINSETS,
                            SizeConfig.fontHEADERSIZE, FontWeight.bold),
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
                                "both the Army and the Navy.",
                            SizeConfig.edgeINSETS,
                            SizeConfig.fontDISCRIPTIONSIZE,
                            FontWeight.bold),
                        createNetworkImage(
                            'http://www.ftmac.org/images/Battery.jpg',
                            SizeConfig.edgeINSETS, // border's radius
                            EdgeInsets.fromLTRB(
                                SizeConfig.blockSizeHorizontal * 5,
                                SizeConfig.blockSizeVertical * 1,
                                SizeConfig.blockSizeHorizontal * 5,
                                SizeConfig.blockSizeVertical * 3),
                            null),
                      ],
                    ),
                  )),
                )
              ],
            )));
  }

// Creates a text element with padding
  createText(text, padding, fontSize, fontWeight) {
    return Padding(
        padding: EdgeInsets.all(padding),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.black, fontSize: fontSize, fontWeight: fontWeight),
          textAlign: TextAlign.center,
        ));
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
                borderRadius: BorderRadius.circular(SizeConfig.borderRADIUS),
                child: Image.asset(path, fit: BoxFit.cover),
              )));
    }
    // if the function is null, return a regular image instead
    return Padding(
        padding: padding,
        // Using ClipRRect allows us to have Images with Rounded edges.
        child: ClipRRect(
          borderRadius: BorderRadius.circular(SizeConfig.borderRADIUS),
          child: Image.asset(path, fit: BoxFit.cover),
        ));
  }

  // Creates an image with an optional circular borderRadius
  createNetworkImage(path, borderRadius, padding, function) {
    if (null != function) {
      return Padding(
          padding: padding,
          // Using ClipRRect allows us to have Images with Rounded edges.
          child: GestureDetector(
              onTap: function,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(SizeConfig.borderRADIUS),
                child: Image.network(path, fit: BoxFit.cover),
              )));
    }
    // if the function is null, return a regular image instead
    return Padding(
        padding: padding,
        // Using ClipRRect allows us to have Images with Rounded edges.
        child: ClipRRect(
          borderRadius: BorderRadius.circular(SizeConfig.borderRADIUS),
          child: Image.network(path, fit: BoxFit.cover),
        ));
  }
}
