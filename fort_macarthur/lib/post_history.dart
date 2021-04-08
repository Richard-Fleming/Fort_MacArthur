import 'package:flutter/material.dart';
import 'package:fort_macarthur/info_box.dart';
import 'package:fort_macarthur/device.dart';

class PostHistoryView extends StatelessWidget {
  final String title;

  PostHistoryView({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Device.backroundCOLOR,
      appBar: AppBar(
        title: Text(title + " Battery"),
      ),
      body: Column(
        children: [
          Image.asset("assets/images/batteryOsgood.jpg"),
          SizedBox(
            height: 10,
          ),
          Text(
            title + " Battery",
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
                    color: Colors.brown.shade300,
                    iconData: Icons.article_outlined,
                    label: "History",
                  ),
                  InfoBox(
                    color: Colors.brown.shade300,
                    iconData: Icons.analytics_outlined,
                    label: "Details",
                  ),
                  InfoBox(
                    color: Colors.brown.shade300,
                    iconData: Icons.photo,
                    label: "Slideshow",
                  ),
                  InfoBox(
                    color: Colors.brown.shade300,
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
