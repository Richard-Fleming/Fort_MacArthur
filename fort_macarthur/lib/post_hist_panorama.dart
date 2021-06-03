import 'package:flutter/material.dart';
import 'package:fort_macarthur/battery_details.dart';
import 'package:fort_macarthur/battery_history.dart';
import 'package:fort_macarthur/image_grid.dart';
import 'package:fort_macarthur/info_box.dart';
import 'package:fort_macarthur/device.dart';
import 'package:fort_macarthur/panoramaView.dart';

class PostHistoryView extends StatelessWidget {
  final PanoData data;

  PostHistoryView({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Device.backroundCOLOR,
      appBar: AppBar(
        title: Text(data.title + " Battery"),
      ),
      body: Column(
        children: [
          Image.asset("assets/images/batteryOsgood.jpg"),
          SizedBox(
            height: 10,
          ),
          Text(
            data.title + " Battery",
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
                  data.history != null
                      ? InfoBox(
                          color: Colors.brown.shade300,
                          iconData: Icons.article_outlined,
                          label: "History",
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BatteryHistory(
                                        history: data.history!)));
                          },
                        )
                      : Container(),
                  data.details != null
                      ? InfoBox(
                          color: Colors.brown.shade300,
                          iconData: Icons.analytics_outlined,
                          label: "Details",
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BatteryDetails(
                                        details: data.details!)));
                          },
                        )
                      : Container(),
                  data.images != null
                      ? InfoBox(
                          color: Colors.brown.shade300,
                          iconData: Icons.photo,
                          label: "Slideshow",
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ImageGridView(
                                          data: data.images!,
                                          elevation: 2.0,
                                          imageFit: BoxFit.fill,
                                        )));
                          },
                        )
                      : Container(),
                  data.temp != null
                      ? InfoBox(
                          color: Colors.brown.shade300,
                          iconData: Icons.military_tech,
                          label: "Artifacts",
                          onTap: () {},
                        )
                      : Container(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
