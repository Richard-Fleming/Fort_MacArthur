import 'package:flutter/material.dart';
import 'package:fort_macarthur/device.dart';

class BatteryHistory extends StatelessWidget {
  final String history;

  BatteryHistory({Key? key, required this.history}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen[900],
        title: Text("History"),
      ),
      backgroundColor: Device.backroundCOLOR,
      body: Center(
        child: SingleChildScrollView(
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: Text(
                history,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
