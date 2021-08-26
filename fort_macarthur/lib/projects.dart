import 'package:flutter/material.dart';
import 'package:fort_macarthur/device.dart';
import 'package:fort_macarthur/sizeConstraints.dart';
import 'package:fort_macarthur/projects_data.dart';

class ProjectsPage extends StatefulWidget {
  @override
  _ProjectsPageState createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  final List<ProjectData> preservationData = [
    ProjectData(
        title: "Fort MacArthur K9 Cementary", desc: preservationDesc[0]),
    ProjectData(
        title: "Hey Rookie (Gaffey Street) Pool", desc: preservationDesc[1]),
    ProjectData(
        title: "Upper Reservation Barracks Structures",
        desc: preservationDesc[2]),
    ProjectData(
        title: "Incredible Shrinking National Register Site",
        desc: preservationDesc[3]),
    ProjectData(title: "Whites Point Preservation", desc: preservationDesc[4]),
    ProjectData(
        title: "Fire Control Stations Preservation", desc: preservationDesc[5]),
    ProjectData(
        title: "Bolsa Chica Beach Panama Mounts", desc: preservationDesc[6])
  ];

  final List<ProjectData> restorationData = [
    ProjectData(
        title: "60 inch General Electric Searchlight Project",
        desc: restorationDesc[0]),
    ProjectData(
        title: "Time-Interval Bell for the Gun Pit", desc: restorationDesc[1]),
    ProjectData(
        title: "60 inch Sperry Searchlight Project", desc: restorationDesc[2]),
    ProjectData(
        title: "Battery Window Replacement Project", desc: restorationDesc[3]),
  ];

  final List<ProjectData> wishlistData = [
    ProjectData(title: "Infrastructure Improvement", desc: wishlistDesc),
    ProjectData(title: "Restoration Shop Tools", desc: wishlistDesc),
    ProjectData(title: "Archival Supplies", desc: wishlistDesc),
    ProjectData(title: "Office Equipment", desc: wishlistDesc),
    ProjectData(title: "Motor Vehicles and Transportation", desc: wishlistDesc),
    ProjectData(title: "Special Event Supplies", desc: wishlistDesc),
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
