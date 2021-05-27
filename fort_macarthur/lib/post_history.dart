import 'package:flutter/material.dart';
import 'package:fort_macarthur/info_box.dart';
import 'package:fort_macarthur/device.dart';

class PostHistoryView extends StatelessWidget {
  final String title;
  final String mainImage;
  final bool? hasHistory;
  final bool? hasPhotos;

  PostHistoryView(
      {Key? key,
      required this.title,
      required this.mainImage,
      this.hasHistory,
      this.hasPhotos})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Device.backroundCOLOR,
      appBar: AppBar(
        title: Text("Battery " + title),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Image.asset(this.mainImage),
          SizedBox(
            height: 15,
          ),
          Text(
            "Battery " + title,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(40),
              child: GridView.count(
                crossAxisSpacing: 40,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: [
                  if (hasHistory!)
                    InfoBox(
                      color: Colors.brown.shade300,
                      iconData: Icons.article_outlined,
                      label: "History",
                      onTap: () {
                        createOverlay(
                            this.mainImage, "Osgood Battery", context);
                      },
                    ),
                  if (hasPhotos!)
                    InfoBox(
                      color: Colors.brown.shade300,
                      iconData: Icons.photo,
                      label: "Photos",
                    ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  createOverlay(image, description, BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Scaffold(
                appBar: AppBar(
                  backgroundColor: Device.backroundCOLOR,
                  title: Text(
                    description!,
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Futura"),
                  ),
                ),
                body: Stack(
                  alignment: Alignment.center,
                  children: [
                    InteractiveViewer(
                      constrained: false,
                      minScale: 1.0,
                      maxScale: 8.0,
                      child: Image.asset(image!, scale: 0.3),
                    ),
                  ],
                ))));
  }
}
