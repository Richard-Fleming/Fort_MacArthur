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
  return Builder(
    builder: (BuildContext context) {
      return Scaffold(
        backgroundColor: Device.backroundCOLOR,
        body: ListView(
          children: [
            CarouselSlider(
              items: [
                //1st Image of Slider
                Container(
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
                      image: AssetImage(
                          "assets/images/Battery Osgood - Farley slides/Slide1.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),

                //2nd Image of Slider
                Container(
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
                      image: AssetImage(
                          "assets/images/Battery Osgood - Farley slides/Slide2.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),

                //3rd Image of Slider
                Container(
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
                      image: AssetImage(
                          "assets/images/Battery Osgood - Farley slides/Slide3.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),

                //4th Image of Slider
                Container(
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
                      image: AssetImage(
                          "assets/images/Battery Osgood - Farley slides/Slide4.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),

                //5th Image of Slider
                Container(
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
                      image: AssetImage(
                          "assets/images/Battery Osgood - Farley slides/Slide5.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],

              //Slider Container properties
              options: CarouselOptions(
                height: 400.0,
                viewportFraction: 0.9,
              ),
            ),
          ],
        ),
      );
    },
  );
}
