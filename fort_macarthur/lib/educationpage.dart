// Our code files
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fort_macarthur/device.dart';
import 'package:fort_macarthur/sizeConstraints.dart';

import 'package:fort_macarthur/QuizPage.dart';


// Any imported dependencies
import 'package:carousel_slider/carousel_slider.dart';

class EducationPage extends StatefulWidget {
  @override
  _EducationPageState createState() => _EducationPageState();
}

List<String> images = [
  "assets/images/batteryOsgood.jpg",
];

List<String> des = [
  "The twin batteries Osgood and Farley have cemented their place in history.\nIf you want to show off to your friends how clever you are \nthis is the place to start !!",
];

List imageList = [
  Slide(
    imagePath: "assets/images/Battery Osgood - Farley slides/Slide1.png",
  ),
  Slide(
    imagePath: "assets/images/Battery Osgood - Farley slides/Slide2.png",
  ),
  Slide(
    imagePath: "assets/images/Battery Osgood - Farley slides/Slide3.png",
  ),
  Slide(
    imagePath: "assets/images/Battery Osgood - Farley slides/Slide4.png",
  ),
  Slide(
    imagePath: "assets/images/Battery Osgood - Farley slides/Slide5.png",
  )
];

class _EducationPageState extends State<EducationPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return Scaffold(
      body: _layoutDetails(),
    );
  }
}

Widget customcard(
    String battname, String image, String des, BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(
      vertical: 20.0,
      horizontal: 30.0,
    ),
    child: InkWell(
      onTap: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          // in changelog 1 we will pass the battname name to ther other widget class
          // this name will be used to open a particular JSON file
          // for a particular battery
          builder: (context) => GetJson(battname),
        ));
      },
      child: Material(
        color: Colors.indigoAccent,
        elevation: 10.0,
        borderRadius: BorderRadius.circular(25.0),
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(100.0),
                  child: Container(
                    // changing from 200 to 150 as to look better
                    height: 150.0,
                    width: 150.0,
                    child: ClipOval(
                      child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          image,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  battname,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontFamily: "Quando",
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  des,
                  style: TextStyle(
                      fontSize: 18.0, color: Colors.white, fontFamily: "Alike"),
                  maxLines: 5,
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget _layoutDetails() {
  return _sliderSlideDetails();
}

Widget _sliderSlideDetails() {
  Color _textColor = Colors.black;

  final List<EducateData> educationData = [
    EducateData(title: "Battery Osgood - Farley"),
    /* EducateData(title: "Battery Leary Merriam"),
    EducateData(title: "Battery Barlow - Saxton"),
    EducateData(title: "Battery Lodor"),
    EducateData(title: "Battery Erwin"),
    EducateData(title: "Battery Eubanks"),
    EducateData(title: "Battery 127 (Paul D Bunker)") */
  ];

  /* List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  } */

  return Builder(
    builder: (BuildContext context) {
      return Scaffold(
        backgroundColor: Device.backroundCOLOR,
        body: ListView(
          shrinkWrap: true,
          children: [
            Align(
              child: Container(
                child: Text(
                  "Batteries",
                  style: TextStyle(fontSize: 20),
                ),
                margin:
                    EdgeInsets.symmetric(vertical: SizeConstraint.edgeInsets),
              ),
              alignment: Alignment.topCenter,
            ),
            Column(
              children: educationData
                  .map((data) => ListTileTheme(
                        tileColor: Colors.brown.shade300,
                        child: ExpansionTile(
                          onExpansionChanged: (expanded) {
                            expanded
                                ? _textColor = Colors.black
                                : _textColor = Colors.black;
                          },
                          trailing: Icon(
                            Icons.expand_more,
                            color: _textColor,
                          ),
                          title: Text(
                            data.title,
                            style: TextStyle(
                              color: _textColor,
                            ),
                          ),
                          children: [
                            Card(
                              child: CarouselSlider(
                                options: CarouselOptions(
                                  height: 400.0,
                                  autoPlay: false,
                                  aspectRatio: 1.0,
                                  viewportFraction: .9,
                                ),
                                items: imageList.map((image) {
                                  return Builder(
                                      builder: (BuildContext context) {
                                    return Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.30,
                                      width: MediaQuery.of(context).size.width,
                                      child: Card(
                                        color: Colors.blueAccent,
                                        child: image,
                                      ),
                                    );
                                  });
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      ))
                  .toList(),
            ),
            Align(
              heightFactor: 1,
              child: Container(
                child: Text(
                  "Quizes",
                  style: TextStyle(fontSize: 20),
                ),
                margin:
                    EdgeInsets.symmetric(vertical: SizeConstraint.edgeInsets),
              ),
              alignment: Alignment.topCenter,
            ),
            Column(
              children: educationData
                  .map((data) => ListTileTheme(
                        tileColor: Colors.brown.shade300,
                        child: ExpansionTile(
                          onExpansionChanged: (expanded) {
                            expanded
                                ? _textColor = Colors.black
                                : _textColor = Colors.black;
                          },
                          trailing: Icon(
                            Icons.expand_more,
                            color: _textColor,
                          ),
                          title: Text(
                            data.title,
                            style: TextStyle(
                              color: _textColor,
                            ),
                          ),
                          children: [
                            customcard(
                                "Osgood-Farley", images[0], des[0], context),
                          ],
                        ),
                      ))
                  .toList(),
            ),
          ],
        ),
      );
    },
  );
}

class Slide extends StatelessWidget {
  final String? imagePath;
  Slide({Key? key, this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 15.0,
            // has the effect of softening the shadow
            //                    spreadRadius: 2.0,
            // has the effect of extending the shadow
            offset: Offset(
              1.0, // horizontal, move right 10
              5.0, // vertical, move down 10
            ),
          )
        ],
        image: DecorationImage(
          image: AssetImage(imagePath!),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

class EducateData {
  String title;

  EducateData({required this.title});
}
