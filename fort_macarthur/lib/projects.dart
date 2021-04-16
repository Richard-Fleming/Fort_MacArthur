import 'package:flutter/material.dart';
import 'package:fort_macarthur/device.dart';
import 'package:fort_macarthur/sizeConstraints.dart';

class ProjectsPage extends StatefulWidget {
  @override
  _ProjectsPageState createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  final List<ProjectData> preservationData = [
    ProjectData(title: "Fort MacArthur K9 Cementary", desc: "testing"),
    ProjectData(
        title: "Hey Rookie (Gaffey Street) Pool", desc: "testing some more"),
    ProjectData(
        title: "Upper Reservation Barracks Structures",
        desc: "testing some more"),
    ProjectData(
        title: "Incredible Shrinking National Register Site",
        desc: "testing some more"),
    ProjectData(title: "Whites Point Preservation", desc: "testing some more"),
    ProjectData(
        title: "Fire Control Stations Preservation", desc: "testing some more"),
    ProjectData(
        title: "Bolsa Chica Beach Panama Mounts", desc: "testing some more")
  ];

  final List<ProjectData> restorationData = [
    ProjectData(
        title: "60 inch General Electric Searchlight Project", desc: "testing"),
    ProjectData(
        title: "Time-Interval Bell for the Gun Pit", desc: "testing some more"),
    ProjectData(
        title: "60 inch Sperry Searchlight Project", desc: "testing some more"),
    ProjectData(
        title: "Battery Window Replacement Project", desc: "testing some more"),
  ];

  final List<ProjectData> wishlistData = [
    ProjectData(title: "Infrastructure Improvement", desc: "testing"),
    ProjectData(title: "Restoration Shop Tools", desc: "testing some more"),
    ProjectData(title: "Archival Supplies", desc: "testing some more"),
    ProjectData(title: "Office Equipment", desc: "testing some more"),
    ProjectData(
        title: "Motor Vehicles and Transportation", desc: "testing some more"),
    ProjectData(title: "Special Event Supplies", desc: "testing some more"),
  ];

  Color _textColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Device.backroundCOLOR,
      body: ListView(
        shrinkWrap: true,
        children: [
          Align(
            child: Container(
              child: Text(
                "Preservation",
                style: TextStyle(fontSize: 20),
              ),
              margin: EdgeInsets.symmetric(vertical: SizeConstraint.edgeInsets),
            ),
            alignment: Alignment.topCenter,
          ),
          Column(
            children: preservationData
                .map((data) => ListTileTheme(
                      tileColor: Colors.brown.shade300,
                      child: ExpansionTile(
                        onExpansionChanged: (expanded) {
                          expanded
                              ? _textColor = Colors.black
                              : _textColor = Colors.black;
                        },
                        trailing: Icon(
                          Icons.expand_more,
                          color: _textColor,
                        ),
                        title: Text(
                          data.title,
                          style: TextStyle(
                            color: _textColor,
                          ),
                        ),
                        children: [Text(data.desc)],
                      ),
                    ))
                .toList(),
          ),
          Align(
            child: Container(
              child: Text(
                "Restoration",
                style: TextStyle(fontSize: 20),
              ),
              margin: EdgeInsets.symmetric(vertical: SizeConstraint.edgeInsets),
            ),
            alignment: Alignment.topCenter,
          ),
          Column(
            children: restorationData
                .map((data) => ListTileTheme(
                      tileColor: Colors.brown.shade300,
                      child: ExpansionTile(
                        onExpansionChanged: (expanded) {
                          expanded
                              ? _textColor = Colors.black
                              : _textColor = Colors.black;
                        },
                        trailing: Icon(
                          Icons.expand_more,
                          color: _textColor,
                        ),
                        title: Text(
                          data.title,
                          style: TextStyle(
                            color: _textColor,
                          ),
                        ),
                        children: [Text(data.desc)],
                      ),
                    ))
                .toList(),
          ),
          Align(
            child: Container(
              child: Text(
                "Wishlist",
                style: TextStyle(fontSize: 20),
              ),
              margin: EdgeInsets.symmetric(vertical: SizeConstraint.edgeInsets),
            ),
            alignment: Alignment.topCenter,
          ),
          Column(
            children: wishlistData
                .map((data) => ListTileTheme(
                      tileColor: Colors.brown.shade300,
                      child: ExpansionTile(
                        onExpansionChanged: (expanded) {
                          expanded
                              ? _textColor = Colors.black
                              : _textColor = Colors.black;
                        },
                        trailing: Icon(
                          Icons.expand_more,
                          color: _textColor,
                        ),
                        title: Text(
                          data.title,
                          style: TextStyle(
                            color: _textColor,
                          ),
                        ),
                        children: [Text(data.desc)],
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}

class ProjectData {
  String title;
  String desc;

  ProjectData({required this.title, required this.desc});
}
