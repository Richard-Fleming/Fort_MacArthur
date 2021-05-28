import 'package:flutter/material.dart';

class BatteryHistory extends StatelessWidget {
  final String history;

  BatteryHistory({Key? key, required this.history}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("History"),
      ),
      body: Text(history),
    );
  }
}
