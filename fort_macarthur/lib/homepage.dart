import 'package:flutter/material.dart';
import 'device.dart';
import 'sizeConstraints.dart';
import 'customCards.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

List<String> imgist = [];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Device.backroundCOLOR,
        body: SingleChildScrollView(
            child: SafeArea(
                child: Container(
          padding: EdgeInsets.all(SizeConstraint.edgeInsets),
          child: Column(children: <Widget>[
            CustomCards(
              "About us!",
              "Our Museum",
              "assets/images/frontpage.jpg",
              "The Fort MacArthur Museum is dedicated to the preservation and interpretation of the history of Fort MacArthur, a U.S. Army post which guarded the Los Angeles harbor from 1914 to 1974. The Museum was established in 1985, and it is housed in the corridors and galleries of historic Battery Osgood-Farley. The Fort MacArthur Reservations hold an important collection of historical structures which were part of the U.S. Army's role in the defense of the American continental coastline from invasion. These structures clearly trace the development of American coastal defenses, from the all big gun era of the turn of the century to the missile era of today.\n\nThe rooms, galleries and corridors of the Museum contain a variety of exhibits and displays which include: the history of Los Angeles harbor defenses, home-front activities in the greater Los Angeles area during the World Wars, Civil Defense, American Pacific Theater military campaigns, early American Air Defenses and the important role of Los Angeles as a military port for both the Army and the Navy.",
            ),
            CustomCards(
              "About us!",
              "Our Museum",
              "assets/images/frontpage.jpg",
              'The Fort MacArthur Museum is dedicated to the preservation and interpretation of the history of Fort MacArthur...',
            ),
            CustomCards(
              "About us!",
              "Our Museum",
              "assets/images/frontpage.jpg",
              'The Fort MacArthur Museum is dedicated to the preservation and interpretation of the history of Fort MacArthur...',
            ),
          ]),
        ))));
  }
}
