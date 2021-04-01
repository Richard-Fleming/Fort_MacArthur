import 'package:flutter/material.dart';
import 'package:fort_macarthur/panoramaView.dart';

class VirtualTours extends StatelessWidget {
  final List<PanoData> batteryData = [
    PanoData(title: "Osgood", panoPath: "assets/images/osgood_pano.jpg"),
    PanoData(title: "Farley", panoPath: "assets/images/farley_pano.jpg")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Map Overview"),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Center(child: Image.asset("assets/images/fort_macarthur_map.png")),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: batteryData
                .map((data) => ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PanoView(
                                    title: data.title,
                                    panoPath: data.panoPath,
                                  )));
                    },
                    child: Text(data.title + " Battery Test")))
                .toList(),
          )
        ],
      ),
    );
  }
}
