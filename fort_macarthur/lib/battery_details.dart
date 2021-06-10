import 'package:flutter/material.dart';
import 'package:fort_macarthur/device.dart';
import 'package:fort_macarthur/panoramaView.dart';

class BatteryDetails extends StatelessWidget {
  final BatteryStats details;

  BatteryDetails({Key? key, required this.details}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen[900],
        title: Text("Details"),
      ),
      backgroundColor: Device.backroundCOLOR,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DetailsCard(
                title: "Construction Commenced:",
                desc: details.constructionStart!,
              ),
              DetailsCard(
                title: "Construction Completed:",
                desc: details.constructionEnd!,
              ),
              DetailsCard(
                title: "Date of Transfer:",
                desc: details.dateOfTransfer!,
              ),
              DetailsCard(
                title: "Cost of Construction:",
                desc: details.constructionCost.toString(),
              ),
              DetailsCard(
                title: "Construction Materials:",
                desc: details.constructionMaterials!,
              ),
              DetailsCard(
                title: "Gun Type and Manufacturer:",
                desc: details.gunTypeAndManufacturer!,
              ),
              DetailsCard(
                title: "Carriage Type and Manufacturer:",
                desc: details.carriageTypeAndManufacturer!,
              ),
              DetailsCard(
                title: "Total Weight of Each Gun:",
                desc: details.weight.toString(),
              ),
              DetailsCard(
                title: "Radius of Fire:",
                desc: details.fireRadius.toString(),
              ),
              DetailsCard(
                title: "Number of Guns Produced:",
                desc: details.gunsProduced!,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DetailsCard extends StatelessWidget {
  final String title;
  final String desc;

  DetailsCard({Key? key, required this.title, required this.desc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 2.0,
        margin: EdgeInsets.symmetric(horizontal: 4, vertical: 10),
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            child: Column(
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  desc,
                  style: TextStyle(fontSize: 16),
                )
              ],
            )));
  }
}
