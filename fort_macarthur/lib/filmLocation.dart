import 'package:flutter/material.dart';
import 'package:fort_macarthur/device.dart';
import 'device.dart';
import 'filmLoc_Credits.dart';

class FilmLocation extends StatefulWidget {
  @override
  _FilmLocationState createState() => _FilmLocationState();
}

class _FilmLocationState extends State<FilmLocation> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Device.init();
    return Scaffold(
        backgroundColor: Device.backroundCOLOR,
        body: Container(
            alignment: Alignment.center,
            child: ListView(children: <Widget>[
              ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      return Colors
                          .lightGreen[900]!; // Use the component's default.
                    },
                  ),
                ),
                icon: Icon(Icons.info),
                label: Text("Some of our Credits",
                    style: TextStyle(fontSize: 20.0)),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FilmLocCredits())),
              ),
              ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      return Colors
                          .lightGreen[900]!; // Use the component's default.
                    },
                  ),
                ),
                icon: Icon(Icons.info),
                label: Text("Available For Productions",
                    style: TextStyle(fontSize: 20.0)),
                onPressed: () {
                  goToProductions();
                },
              ),
              createText(
                  "\nFilm, Television and Photography at the Fort MacArthur Museum\n",
                  EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
                  20.0,
                  FontWeight.bold),
              createText(
                  "Since 1933, Fort MacArthur has been the go to location for filming in Southern California\n\n" +
                      "Fort MacArthur has an association with the entertainment industry that goes back over 75 years. From the earliest 'talkies' through the latest adventures films, we've been happy and proud to work with you on your feature film, commercial, television, music video or photo shoot.\n\n" +
                      "With our varied terrain, spectacular ocean views and historic military structures, we can provide you with a space that meets your exact needs, and a staff that has a long history of working with production crews to support turning your vision into reality. From underground bunkers to grassy fields, the Fort is a great place to shoot any number of scenes.\n\n" +
                      "Located a mere 26 miles from downtown Hollywood, less than 20 miles from LAX and Long Beach airport, and with easy access from the rest of Southern California, Fort MacArthur is an extremely convenient location to use. And we are well within the 30-Mile Studio Zone.\n\n" +
                      "As a working US Army Coastal Defense location from 1914 to 1974, Fort MacArthur can provide the right environment for military shows from WWI, WWII, Korea & Vietnam. But the Fort shouldn't be typecast as a military facility. In fact we've been seen as everything from a baseball field to a Caribbean island to a high security prison. With the acreage that we have available, we can accommodate most requirements for both day and night shoots.\n\n" +
                      "And locations aren't all that we can provide. We have a dozen vehicles in our military vehicle collection ranging from a 1918 FWD Cargo Truck to a WWII Half Track, all completely operable. Add to that a set of 1942 GE & Sperry 60'' Searchlights and generators, along with their companion 3-man 40mm mobile anti aircraft gun. And we are constantly working on restoring new purchases and donations so the list continues to grow.\n\n" +
                      "Beyond the vehicle and mobile equipment collection, Fort MacArthur can also provide genuine period uniforms, non-firing weapons, tents, small props and consulting expertise for your productions.\n\n" +
                      "For more information or to schedule a production on site, please contact Steve Nelson at director@ftmac.org.\n",
                  EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
                  16.0,
                  FontWeight.normal),
              Divider(height: 12.5, thickness: 2.5, color: Colors.black),
              Divider(height: 15.5),
              createDouble(
                  "assets/images/view_west_from_top_of_battery.jpg",
                  "View West from Top of Battery",
                  "assets/images/view_east_from_top_of_battery_to_farley_pit.jpg",
                  "View East from Top\nof Battery to Farley Pit"),
              Divider(height: 12.5),
              createDouble(
                  "assets/images/view_south_over_field_of_catalina.jpg",
                  "View South over\nfield to Catalina",
                  "assets/images/view_north_looking_into_battery_courtyard.jpg",
                  "View North, looking\ninto Battery Courtyard"),
              Divider(height: 12.5),
              createDouble(
                  "assets/images/walkway_with_view_into_courtyard.jpg",
                  "Walkway with view into Courtyard",
                  "assets/images/walkway_towards_stairs_and_access_road.jpg",
                  "Walkway towards Stairs and access road"),
              Divider(height: 12.5),
              createDouble(
                  "assets/images/battery_osgood_commander_station_exterior.jpg",
                  "Battery Osgood Commander Station Exterior",
                  "assets/images/plotting_room_door_in_courtyard.jpg",
                  "Plotting Room door in Courtyard"),
              Divider(height: 12.5),
              createDouble(
                  "assets/images/1943_willies_jeep.jpg",
                  "1943 Willies Jeep",
                  "assets/images/1941_dodge_command_car.jpg",
                  "View North, looking\ninto Battery Courtyard"),
              Divider(height: 12.5),
              createDouble(
                  "assets/images/1918_dodge_brothers_truck.jpg",
                  "1918 Dodge Brothers Truck",
                  "assets/images/1918_dodge_brothers_truck2.jpg",
                  "1918 Dodge Brothers Truck"),
              Divider(height: 12.5),
            ])));
  }

  createCard(image, description) {
    return Container(
      width: Device.safeBlockHorizontal * 50,
      height: Device.height / 8.5,
      child: Card(
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            createOverlay(image, description);
          },
          child: Column(
            children: [
              Image.asset(image, fit: BoxFit.fitWidth),
              Text(
                description,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  createOverlay(image, description) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Scaffold(
                appBar: AppBar(
                  backgroundColor: Device.backroundCOLOR,
                  title: Text(
                    description!,
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
                      child: Image.asset(image!, scale: 0.3),
                    ),
                  ],
                ))));
  }

  goToProductions() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Scaffold(
                backgroundColor: Device.backroundCOLOR,
                appBar: AppBar(
                  backgroundColor: Colors.lightGreen[900]!,
                  title: Text(
                    "Available For Productions",
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Futura"),
                  ),
                ),
                body: ListView(children: [
                  Text(
                    " Vehicles:\n" +
                        "1918 FWD Cargo Truck\n"
                            "1918 Dodge Brothers Repair Truck\n"
                            "1941 1/2 Ton Command Car\n"
                            "1941 1/2 Ton Ambulance\n"
                            "1941 1/2 Ton Pickup Truck\n"
                            "1942 GE 60-inch Searchlight\n"
                            "1942 Sperry 60-inch Searchlight\n"
                            "1942 Bofors M1 40mm Mobile AA Gun\n"
                            "1943 3/4 Ton Command Car\n"
                            "1943 Willies Jeep\n"
                            "1944 Deuce and a Half\n"
                            "1945 M16A2 Half Track with Quad 50\n\n\n"
                            "Uniforms & Accessories:\n"
                            "Uniforms\n"
                            "Weapons\n"
                            "Radios\n"
                            "Tents\n"
                            "Various Field Equipment\n",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Futura"),
                  ),
                ]))));
  }

  createDouble(imageOne, descOne, imageTwo, descTwo) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          createCard(imageOne, descOne),
          createCard(imageTwo, descTwo),
        ]);
  }

  createText(text, padding, fontSize, fontWeight) {
    return Padding(
        padding: padding,
        child: SelectableText(text,
            scrollPhysics: NeverScrollableScrollPhysics(),
            style: TextStyle(
                color: Colors.black,
                fontSize: fontSize,
                fontWeight: fontWeight),
            textAlign: TextAlign.center));
  }
}
