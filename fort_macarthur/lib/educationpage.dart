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
  return _sliderDetails();
}

Widget _sliderDetails() {
  return CarouselSlider(
    options: CarouselOptions(height: 300.0),
    items: [1, 2, 3, 4, 5].map(
      (i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: Device.screenWidth,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "assets/images/Battery Osgood - Farley slides/Slide1.png"),
                    fit: BoxFit.contain),
              ),
            );
          },
        );
      },
    ).toList(),
  );
}
