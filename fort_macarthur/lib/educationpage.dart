// Our code files
import 'package:flutter/material.dart';
import 'package:fort_macarthur/device.dart';
import 'package:fort_macarthur/sizeConstraints.dart';
// Any imported dependencies
import 'package:carousel_slider/carousel_slider.dart';

class EducationPage extends StatefulWidget {
  @override
  _EducationPageState createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _layoutDetails(),
    );
  }
}

Widget _layoutDetails() {
  return _sliderSlideDetails();
}

Widget _sliderSlideDetails() {
  Color _textColor = Colors.black;

  final List<EducateData> educationData = [
    EducateData(title: "Battery Osgood - Farley"),
    /* EducateData(title: "Battery Leary Merriam", desc: "testing some more"),
    EducateData(title: "Battery Barlow - Saxton", desc: "testing some more"),
    EducateData(title: "Battery Lodor", desc: "testing some more"),
    EducateData(title: "Battery Erwin", desc: "testing some more"),
    EducateData(title: "Battery Eubanks", desc: "testing some more"),
    EducateData(title: "Battery 127 (Paul D Bunker)", desc: "testing some more") */
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
