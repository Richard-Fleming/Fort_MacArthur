import 'package:flutter/material.dart';
import 'package:panorama/panorama.dart';

class PanoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Pano"),
      ),
      body: Panorama(
        child: Image.asset("assets/images/test_pano.jpg"),
      ),
    );
  }
}
