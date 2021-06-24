import 'package:flutter/material.dart';
import 'package:fort_macarthur/device.dart';
import 'device.dart';
import 'package:url_launcher/url_launcher.dart';
import 'sizeConstraints.dart';
import 'customCards.dart';

class FilmLocCredits extends StatefulWidget {
  @override
  _FilmLocCreditsState createState() => _FilmLocCreditsState();
}

class _FilmLocCreditsState extends State<FilmLocCredits> {
  double linkSpacing = 15.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Device.init();

    return Scaffold(
        backgroundColor: Device.backroundCOLOR,
        appBar: AppBar(
          backgroundColor: Colors.lightGreen[900]!,
          title: Text(
            "Some of Our Credits",
            style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                fontFamily: "Futura"),
          ),
        ),
        body: SingleChildScrollView(
            child: SafeArea(
                child: Container(
                    padding: EdgeInsets.all(SizeConstraint.edgeInsets),
                    child: Column(children: <Widget>[
                      CustomCards(
                          title: "A Few Good Men",
                          subtitle: "Our Museum",
                          imgSrc: "assets/images/frontpage.jpg",
                          desc:
                              "The Fort MacArthur Museum is dedicated to the preservation and interpretation of the history of Fort MacArthur, a U.S. Army post which guarded the Los Angeles harbor from 1914 to 1974. The Museum was established in 1985, and it is housed in the corridors and galleries of historic Battery Osgood-Farley. The Fort MacArthur Reservations hold an important collection of historical structures which were part of the U.S. Army's role in the defense of the American continental coastline from invasion. These structures clearly trace the development of American coastal defenses, from the all big gun era of the turn of the century to the missile era of today.\n\nThe rooms, galleries and corridors of the Museum contain a variety of exhibits and displays which include: the history of Los Angeles harbor defenses, home-front activities in the greater Los Angeles area during the World Wars, Civil Defense, American Pacific Theater military campaigns, early American Air Defenses and the important role of Los Angeles as a military port for both the Army and the Navy.",
                          icon: Icon(Icons.movie),
                          action: null,
                          buttonRoute: null),
                      CustomCards(
                          title: "Dragnet",
                          subtitle: "Our Museum",
                          imgSrc: "assets/images/frontpage.jpg",
                          desc:
                              "The Fort MacArthur Museum is dedicated to the preservation and interpretation of the history of Fort MacArthur, a U.S. Army post which guarded the Los Angeles harbor from 1914 to 1974. The Museum was established in 1985, and it is housed in the corridors and galleries of historic Battery Osgood-Farley. The Fort MacArthur Reservations hold an important collection of historical structures which were part of the U.S. Army's role in the defense of the American continental coastline from invasion. These structures clearly trace the development of American coastal defenses, from the all big gun era of the turn of the century to the missile era of today.\n\nThe rooms, galleries and corridors of the Museum contain a variety of exhibits and displays which include: the history of Los Angeles harbor defenses, home-front activities in the greater Los Angeles area during the World Wars, Civil Defense, American Pacific Theater military campaigns, early American Air Defenses and the important role of Los Angeles as a military port for both the Army and the Navy.",
                          icon: Icon(Icons.movie),
                          action: null,
                          buttonRoute: null),
                      CustomCards(
                          title: "Pearl Harbor",
                          subtitle: "Our Museum",
                          imgSrc: "assets/images/frontpage.jpg",
                          desc:
                              "The Fort MacArthur Museum is dedicated to the preservation and interpretation of the history of Fort MacArthur, a U.S. Army post which guarded the Los Angeles harbor from 1914 to 1974. The Museum was established in 1985, and it is housed in the corridors and galleries of historic Battery Osgood-Farley. The Fort MacArthur Reservations hold an important collection of historical structures which were part of the U.S. Army's role in the defense of the American continental coastline from invasion. These structures clearly trace the development of American coastal defenses, from the all big gun era of the turn of the century to the missile era of today.\n\nThe rooms, galleries and corridors of the Museum contain a variety of exhibits and displays which include: the history of Los Angeles harbor defenses, home-front activities in the greater Los Angeles area during the World Wars, Civil Defense, American Pacific Theater military campaigns, early American Air Defenses and the important role of Los Angeles as a military port for both the Army and the Navy.",
                          icon: Icon(Icons.movie),
                          action: null,
                          buttonRoute: null),
                      CustomCards(
                          title: "Cats & Dogs 2",
                          subtitle: "Our Museum",
                          imgSrc: "assets/images/frontpage.jpg",
                          desc:
                              "The Fort MacArthur Museum is dedicated to the preservation and interpretation of the history of Fort MacArthur, a U.S. Army post which guarded the Los Angeles harbor from 1914 to 1974. The Museum was established in 1985, and it is housed in the corridors and galleries of historic Battery Osgood-Farley. The Fort MacArthur Reservations hold an important collection of historical structures which were part of the U.S. Army's role in the defense of the American continental coastline from invasion. These structures clearly trace the development of American coastal defenses, from the all big gun era of the turn of the century to the missile era of today.\n\nThe rooms, galleries and corridors of the Museum contain a variety of exhibits and displays which include: the history of Los Angeles harbor defenses, home-front activities in the greater Los Angeles area during the World Wars, Civil Defense, American Pacific Theater military campaigns, early American Air Defenses and the important role of Los Angeles as a military port for both the Army and the Navy.",
                          icon: Icon(Icons.movie),
                          action: null,
                          buttonRoute: null),
                      CustomCards(
                          title: "Private Benjamin",
                          subtitle: "Our Museum",
                          imgSrc: "assets/images/frontpage.jpg",
                          desc:
                              "The Fort MacArthur Museum is dedicated to the preservation and interpretation of the history of Fort MacArthur, a U.S. Army post which guarded the Los Angeles harbor from 1914 to 1974. The Museum was established in 1985, and it is housed in the corridors and galleries of historic Battery Osgood-Farley. The Fort MacArthur Reservations hold an important collection of historical structures which were part of the U.S. Army's role in the defense of the American continental coastline from invasion. These structures clearly trace the development of American coastal defenses, from the all big gun era of the turn of the century to the missile era of today.\n\nThe rooms, galleries and corridors of the Museum contain a variety of exhibits and displays which include: the history of Los Angeles harbor defenses, home-front activities in the greater Los Angeles area during the World Wars, Civil Defense, American Pacific Theater military campaigns, early American Air Defenses and the important role of Los Angeles as a military port for both the Army and the Navy.",
                          icon: Icon(Icons.movie),
                          action: null,
                          buttonRoute: null),
                      CustomCards(
                          title: "Crash",
                          subtitle: "Our Museum",
                          imgSrc: "assets/images/frontpage.jpg",
                          desc:
                              "The Fort MacArthur Museum is dedicated to the preservation and interpretation of the history of Fort MacArthur, a U.S. Army post which guarded the Los Angeles harbor from 1914 to 1974. The Museum was established in 1985, and it is housed in the corridors and galleries of historic Battery Osgood-Farley. The Fort MacArthur Reservations hold an important collection of historical structures which were part of the U.S. Army's role in the defense of the American continental coastline from invasion. These structures clearly trace the development of American coastal defenses, from the all big gun era of the turn of the century to the missile era of today.\n\nThe rooms, galleries and corridors of the Museum contain a variety of exhibits and displays which include: the history of Los Angeles harbor defenses, home-front activities in the greater Los Angeles area during the World Wars, Civil Defense, American Pacific Theater military campaigns, early American Air Defenses and the important role of Los Angeles as a military port for both the Army and the Navy.",
                          icon: Icon(Icons.movie),
                          action: null,
                          buttonRoute: null),
                      CustomCards(
                          title: "The Usual Suspects",
                          subtitle: "Our Museum",
                          imgSrc: "assets/images/frontpage.jpg",
                          desc:
                              "The Fort MacArthur Museum is dedicated to the preservation and interpretation of the history of Fort MacArthur, a U.S. Army post which guarded the Los Angeles harbor from 1914 to 1974. The Museum was established in 1985, and it is housed in the corridors and galleries of historic Battery Osgood-Farley. The Fort MacArthur Reservations hold an important collection of historical structures which were part of the U.S. Army's role in the defense of the American continental coastline from invasion. These structures clearly trace the development of American coastal defenses, from the all big gun era of the turn of the century to the missile era of today.\n\nThe rooms, galleries and corridors of the Museum contain a variety of exhibits and displays which include: the history of Los Angeles harbor defenses, home-front activities in the greater Los Angeles area during the World Wars, Civil Defense, American Pacific Theater military campaigns, early American Air Defenses and the important role of Los Angeles as a military port for both the Army and the Navy.",
                          icon: Icon(Icons.movie),
                          action: null,
                          buttonRoute: null),
                      CustomCards(
                          title: "Don't Mess with the Zohan",
                          subtitle: "Our Museum",
                          imgSrc: "assets/images/frontpage.jpg",
                          desc:
                              "The Fort MacArthur Museum is dedicated to the preservation and interpretation of the history of Fort MacArthur, a U.S. Army post which guarded the Los Angeles harbor from 1914 to 1974. The Museum was established in 1985, and it is housed in the corridors and galleries of historic Battery Osgood-Farley. The Fort MacArthur Reservations hold an important collection of historical structures which were part of the U.S. Army's role in the defense of the American continental coastline from invasion. These structures clearly trace the development of American coastal defenses, from the all big gun era of the turn of the century to the missile era of today.\n\nThe rooms, galleries and corridors of the Museum contain a variety of exhibits and displays which include: the history of Los Angeles harbor defenses, home-front activities in the greater Los Angeles area during the World Wars, Civil Defense, American Pacific Theater military campaigns, early American Air Defenses and the important role of Los Angeles as a military port for both the Army and the Navy.",
                          icon: Icon(Icons.movie),
                          action: null,
                          buttonRoute: null),
                    ])))));
  }

  createText(text, fontSize, fontWeight, color) {
    return Text(text,
        style: TextStyle(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
            fontFamily: "Futura"),
        textAlign: TextAlign.center);
  }

  createLink(text, url, fontSize, fontWeight) {
    return InkWell(
        child: createText(text, fontSize, fontWeight, Colors.green[900]),
        onTap: () => launchURL(url));
  }

  void launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
