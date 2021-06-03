import 'package:flutter/material.dart';
import 'package:fort_macarthur/image_grid.dart';
import 'package:panorama/panorama.dart';
import 'package:fort_macarthur/post_hist_panorama.dart';

class PanoView extends StatelessWidget {
  final PanoData data;

  PanoView({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Battery " + data.title),
      ),
      body: Stack(
        alignment: Alignment.topRight,
        children: [
          Panorama(
            child: Image.asset(data.panoPath),
            maxLatitude: 30,
            minLatitude: -30,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PostHistoryView(
                              data: data,
                            )));
              },
              icon: Icon(Icons.collections_bookmark),
              label: Text(data.title + " Collection"),
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
  String? history;
  BatteryStats? details;
  List<ImageGridData>? images;
  int? temp; // temp value

  PanoData(
      {required this.title,
      required this.panoPath,
      this.history,
      this.details,
      this.images,
      this.temp});
}

// used for battery details
class BatteryStats {
  String? constructionStart;
  String? constructionEnd;
  String? dateOfTransfer;
  int? constructionCost;
  String? constructionMaterials;
  String? gunTypeAndManufacturer;
  String? carriageTypeAndManufacturer;
  int? weight;
  int? fireRadius;
  String? gunsProduced;

  BatteryStats(
      {this.constructionStart,
      this.constructionEnd,
      this.dateOfTransfer,
      this.constructionCost,
      this.constructionMaterials,
      this.gunTypeAndManufacturer,
      this.carriageTypeAndManufacturer,
      this.weight,
      this.fireRadius,
      this.gunsProduced});
}
