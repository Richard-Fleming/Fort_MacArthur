import 'package:flutter/material.dart';
import 'package:panorama/panorama.dart';

class PanoView extends StatelessWidget {
  final String title;
  final String panoPath;

  PanoView({Key? key, required this.title, required this.panoPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title + " Battery"),
      ),
      body: Stack(
        alignment: Alignment.topRight,
        children: [
          Panorama(
            child: Image.asset(panoPath),
            maxLatitude: 30,
            minLatitude: -30,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.collections_bookmark),
              label: Text(title + " Collection"),
            ),
          ),
        ],
      ),
    );
  }
}

class PanoData {
  String title;
  String panoPath;

  PanoData({required this.title, required this.panoPath});
}
