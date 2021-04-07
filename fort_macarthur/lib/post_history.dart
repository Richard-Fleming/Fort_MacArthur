import 'package:flutter/material.dart';
import 'package:fort_macarthur/info_box.dart';

class PostHistoryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Battery test"),
      ),
      body: Column(
        children: [
          Image.asset("assets/images/batteryOsgood.jpg"),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(20),
              child: GridView.count(
                crossAxisSpacing: 10,
                crossAxisCount: 3,
                children: [
                  InfoBox(
                    color: Colors.red,
                    iconData: Icons.ac_unit,
                    label: "History",
                  ),
                  InfoBox(
                    color: Colors.blue,
                    iconData: Icons.ac_unit,
                    label: "Details",
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
