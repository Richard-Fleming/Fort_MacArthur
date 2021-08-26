import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fort_macarthur/sizeConstraints.dart';
import 'device.dart';

class Slideshow extends StatelessWidget {
  final List imageList;
  const Slideshow({Key? key, required this.imageList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: CarouselSlider(
        options: CarouselOptions(
          height: 300,
          viewportFraction: 0.9,
          autoPlay: false,
          //enlargeCenterPage: true,
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
    );
  }
}
