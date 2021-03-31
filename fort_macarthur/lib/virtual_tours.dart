import 'package:flutter/material.dart';
import 'package:fort_macarthur/panoramaView.dart';

class VirtualTours extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Map Overview"),
      ),
      body: Stack(
        children: [
          Center(child: Image.asset("assets/images/fort_macarthur_map.png")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PanoView()));
              },
              child: Text("Pano Test"))
        ],
      ),
    );
  }
}
