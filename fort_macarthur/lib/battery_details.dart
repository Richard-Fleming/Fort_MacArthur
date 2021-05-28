import 'package:flutter/material.dart';
import 'package:fort_macarthur/panoramaView.dart';

class BatteryDetails extends StatelessWidget {
  final BatteryStats details;

  BatteryDetails({Key? key, required this.details}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: Column(
        children: [
          Card(
            child: Column(
              children: [
                Text("Construction Commenced:"),
                Text(details.constructionStart!)
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Text("Construction Completed:"),
                Text(details.constructionEnd!)
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Text("Date of Transfer:"),
                Text(details.dateOfTransfer!)
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Text("Cost of Construction:"),
                Text(details.constructionCost.toString())
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Text("Construction Materials:"),
                Text(details.constructionMaterials!)
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Text("Gun Type and Manufacturer:"),
                Text(details.gunTypeAndManufacturer!)
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Text("Carriage Type and Manufacturer:"),
                Text(details.carriageTypeAndManufacturer!)
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Text("Total Weight of each Gun:"),
                Text(details.weight.toString())
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Text("Radius of Fire:"),
                Text(details.fireRadius.toString())
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Text("Number of Guns Produced:"),
                Text(details.gunsProduced.toString())
              ],
            ),
          )
        ],
      ),
    );
  }
}
