// Our code files
import 'package:flutter/material.dart';
import 'package:fort_macarthur/device.dart';
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
  int _currentIndex = 0;
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
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  return Builder(
    builder: (BuildContext context) {
      return Scaffold(
        backgroundColor: Device.backroundCOLOR,
        body: Column(
          children: <Widget>[
            Card(
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 400.0,
                  autoPlay: false,
                  aspectRatio: 1.0,
                  viewportFraction: .9,
                ),
                items: imageList.map((image) {
                  return Builder(builder: (BuildContext context) {
                    return Container(
                      height: MediaQuery.of(context).size.height * 0.30,
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        color: Colors.blueAccent,
                        child: image,
                      ),
                    );
                  });
                }).toList(),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: map<Widget>(imageList, (index, url) {
                  return Container(
                    width: 10.0,
                    height: 10.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  );
                }),
              ),
            ),
          ],
        ),
      );
    },
  );
}

// ignore: must_be_immutable
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
