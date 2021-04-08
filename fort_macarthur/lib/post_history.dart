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
          SizedBox(
            height: 10,
          ),
          Text(
            "Battery Test",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(20),
              child: GridView.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                children: [
                  InfoBox(
                    color: Colors.deepPurple,
                    iconData: Icons.article_outlined,
                    label: "History",
                  ),
                  InfoBox(
                    color: Colors.deepPurple,
                    iconData: Icons.analytics_outlined,
                    label: "Details",
                  ),
                  InfoBox(
                    color: Colors.deepPurple,
                    iconData: Icons.photo,
                    label: "Slideshow",
                  ),
                  InfoBox(
                    color: Colors.deepPurple,
                    iconData: Icons.military_tech,
                    label: "Artifacts",
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
