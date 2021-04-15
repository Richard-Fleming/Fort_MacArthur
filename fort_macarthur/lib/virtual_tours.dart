import 'package:flutter/material.dart';
import 'package:fort_macarthur/panoramaView.dart';
import 'package:fort_macarthur/device.dart';

class VirtualTours extends StatefulWidget {
  @override
  _VirtualToursState createState() => _VirtualToursState();
}

class _VirtualToursState extends State<VirtualTours> {
  final List<PanoData> batteryData = [
    PanoData(title: "Osgood", panoPath: "assets/images/osgood_pano.jpg"),
    PanoData(title: "Farley", panoPath: "assets/images/farley_pano.jpg")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Device.backroundCOLOR,
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
