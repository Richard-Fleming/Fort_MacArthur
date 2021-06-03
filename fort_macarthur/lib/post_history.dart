import 'package:flutter/material.dart';
import 'package:fort_macarthur/battery_details.dart';
import 'package:fort_macarthur/battery_history.dart';
import 'package:fort_macarthur/image_grid.dart';
import 'package:fort_macarthur/info_box.dart';
import 'package:fort_macarthur/device.dart';
import 'package:fort_macarthur/panoramaView.dart';

class PostHistoryView extends StatelessWidget {
<<<<<<< HEAD
  final String title;
  final String mainImage;
  final String? historyDescription;
  final List<String>? photos;

  PostHistoryView(
      {Key? key,
      required this.title,
      required this.mainImage,
      this.historyDescription,
      this.photos})
      : super(key: key);
=======
  final PanoData data;

  PostHistoryView({Key? key, required this.data}) : super(key: key);
>>>>>>> master

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Device.backroundCOLOR,
      appBar: AppBar(
<<<<<<< HEAD
        title: Text(title),
=======
        title: Text(data.title + " Battery"),
>>>>>>> master
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Image.asset(this.mainImage),
          SizedBox(
            height: 15,
          ),
          Text(
<<<<<<< HEAD
            title,
=======
            data.title + " Battery",
>>>>>>> master
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(40),
              child: GridView.count(
                crossAxisSpacing: 40,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: [
<<<<<<< HEAD
                  if (historyDescription != null)
                    InfoBox(
                      color: Colors.brown.shade300,
                      iconData: Icons.article_outlined,
                      label: "History",
                      onTap: () {
                        createDescription(title, historyDescription, context);
                      },
                    ),
                  if (photos != null)
                    InfoBox(
                      color: Colors.brown.shade300,
                      iconData: Icons.photo,
                      label: "Photos",
                      onTap: () {
                        gotoPhotos(context);
                      },
                    ),
=======
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
>>>>>>> master
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  gotoPhotos(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Scaffold(
                appBar: AppBar(
                  backgroundColor: Device.backroundCOLOR,
                  title: Text(
                    "Click on a Card to view the Photo!",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Futura"),
                  ),
                ),
                body: Container(
                    alignment: Alignment.center,
                    child: ListView(children: handleLoop(context))))));
  }

  handleLoop(context) {
    List<Widget> cards = [];

    if (this.photos!.length % 2 == 0) {
      // will go through if list is even
      for (int i = 0; i < this.photos!.length; i += 2)
        cards.add(createDouble(this.photos![i], this.photos![i + 1], context));
    } else {
      // if list is odd we will need to stop before we over reach
      for (int i = 0; i < this.photos!.length; i += 2) {
        if (i + 1 < this.photos!.length) // we can keep going if true
          cards
              .add(createDouble(this.photos![i], this.photos![i + 1], context));
        else // otherwise if i goes past the length, make the second photo null
          cards.add(createDouble(this.photos![i], null, context));
      }
    }
    return cards;
  }

  createDescription(title, description, BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Scaffold(
                appBar: AppBar(
                  backgroundColor: Device.backroundCOLOR,
                  title: Text(
                    title! + " History",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Futura"),
                  ),
                ),
                body: Stack(
                  alignment: Alignment.center,
                  children: [Text(description)],
                ))));
  }

  createDouble(photoOne, photoTwo, context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          createCard(photoOne, context),
          createCard(photoTwo, context),
        ]);
  }

  createCard(photo, context) {
    if (photo != null) {
      return Container(
          width: Device.width / 5.3,
          height: Device.height / 8.5,
          child: Card(
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                createOverlay(photo, title, context);
              },
              child: Column(
                children: [
                  Image.asset(photo, fit: BoxFit.fitWidth),
                  Text(
                    this.title,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ));
    } else {
      return Container(
          width: Device.width / 5.3,
          height: Device.height / 8.5,
          child: Card());
    }
  }

  createOverlay(photo, title, BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Scaffold(
                appBar: AppBar(
                  backgroundColor: Device.backroundCOLOR,
                  title: Text(
                    title,
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Futura"),
                  ),
                ),
                body: Stack(
                  alignment: Alignment.center,
                  children: [
                    InteractiveViewer(
                      constrained: false,
                      minScale: 1.0,
                      maxScale: 8.0,
                      child: Image.asset(photo!, scale: 0.3),
                    ),
                  ],
                ))));
  }
}
