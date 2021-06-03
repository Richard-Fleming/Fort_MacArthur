import 'package:flutter/material.dart';
import 'package:fort_macarthur/device.dart';
import 'device.dart';
import 'post_history.dart';

class PostHistoryPage extends StatefulWidget {
  @override
  _PostHistoryState createState() => _PostHistoryState();
}

class _PostHistoryState extends State<PostHistoryPage> {
  List<String> phTitles = [
    "Battery Osgood",
    "Battery Leary Merriam",
    "Battery Barlow - Saxton",
    "Battery Lodor",
    "Battery Erwin",
    "Battery Eubanks",
    "Battery 127 (Paul D Bunker)",
    "Battery 128",
    "Battery 240 (Harry C. Barnes)",
    "Battery 241",
    "Battery 242 (Harry J Harrison)",
    "90mm AMTB",
    "155 GPF Mobile Guns",
    "Anti-Aircraft (Fixed and Mobile)",
  ];
  List<String> phImages = [
    "assets/images/battery/batteryOsgood.jpg",
    "assets/images/battery/Leary.jpg",
    "assets/images/battery/SaxtonGun.jpg",
    "assets/images/battery/Lodor.jpg",
    "assets/images/battery/Irwin.png",
    "assets/images/battery/Eubanks.jpg",
    "assets/images/battery/127bunker.jpg",
    "assets/images/battery/Battery128.jpg",
    "assets/images/battery/240barnes.jpg",
    "assets/images/battery/241gun.jpg",
    "assets/images/battery/242gun.jpg",
    "assets/images/battery/AMTB.jpg",
    "assets/images/battery/155mmFieldGuns.jpg",
    "assets/images/battery/antiair.jpg",
  ];

  List<String?> phDescriptions = [
    // String? allows for nullable objects
    "Battery Osgood-Farley was constructed during the years 1916-1919 under the fortification program outlined by the Taft Board Report of 1906. Although constructed as a single two-gun emplacement, each gun was originally designated as a separate tactical battery, hence the two names. Later, the battery was considered to be a single tactical unit.",
    "Battery Leary - Merriam was constructed during the years 1916-1919 under the fortification program outlined by the Taft Board Report of 1906. Although constructed as a single two-gun emplacement, each gun was originally designated as a separate tactical battery, hence the two names. Later, the battery was considered to be a single tactical unit.",
    "Construction of batteries John Barlow and Rufus Saxton commenced on April 1, 1915 and was completed on June 27, 1919. The excavation for the structure was done almost entirely by hand labor due to a lack of available heavy machinery in the area. The powder and shell magazines are located underground to the front of the building and are accessed by a series of doors located between the guns.",
    "Battery Lodor is the tale of three batteries which began life on a small sprit of land between Terminal Island and Deadmans Island in the Los Angeles Harbor. Constructed commenced on April 15, 1916 and the battery was finished and operational by July 31, 1917. Four, three-inch model 1903 guns were mounted along with several searchlights to serve as a rapid fire solution for the proposed controlled minefield, just inside the harbor entrance.",
    "During the first world war the US Army started looking at new ways to provide heavy mobile fire power to the Coast Artillery service. The use of railway mounted guns was nothing new at the time, the practice stated during the Civil war with both union and confederate forces mounting heavy cannons behind large wooden shields.",
    "After war broke out on December 7th 1941, the War Department made an immediate effort to shore up the aging defenses around the Los Angeles harbor in preparation for a possible west coast attack by the Japanese. Part of this build up involved the transfer of two eight inch railway guns from the east coast.",
    "By the beginning of World War Two, the disappearing guns originally installed on the upper reservation of Fort MacArthur were considered to be obsolete due to a lack of range and overhead protection.",
    "About 20 miles to the south of Fort MacArthur on the inland side of Pacific Coast Highway lies the former Bolsa Chica Military Reservation. This facility was purchased by the US Army as the location for two new state-of-the-art batteries designed to cover the southern approaches to the Los Angeles - Long Beach harbor areas.",
    "Beginning in about 1940 the United States began to take another serious look at the state of it's coastal defenses. As a result of that re-evaluation dozens of forts around the country were slated for modernization.",
    "Beginning in about 1940 the United States began to take another serious look at the state of it's coastal defenses. As a result of that re-evaluation dozens of forts around the country became slated for modernization.",
    "The third and final six-inch battery to be built for the harbor defenses of Los Angeles was Battery 242 at the Bolsa Chica Military Reservation in Huntington Beach.",
    "Technically known as the 90mm M3 fixed mount, the AMTB gun was the fixed mount version of the army’s 90mm anti-aircraft gun. Used in the coast defense roll, the 90mm M3 was supplied with a heavy shield on three sides and remote fire control for use against high speed craft. Due to their speed and great maneuverability, it was feared that these craft could slip past the large coast defense guns and possibly attack the inner harbor.",
    "Twenty-four 155mm mobile guns were used in the Los Angeles area for beach defenses during WW II. These guns were moved by truck and could be rapidly set up on simple concrete circles known as Panama Mounts designed to stabilize the guns and provide a fixed location to aide in fire control.",
    "During the earliest days the twentieth century, not much thought was given to the idea of defending the fort against attack from the sky. At that time, powered flight was limited to a few slow moving airships and aircraft were made mostly of wood and canvas.",
  ];

  List<List<String?>> phPhotos = [
    [
      // Osgood
      "assets/images/battery/batteryOsgood.jpg",
    ],
    [
      // Leary
      "assets/images/battery/Leary.jpg",
    ],
    [
      // Saxton
      "assets/images/battery/SaxtonGun.jpg",
    ],
    [
      // Lodor
      "assets/images/battery/Lodor.jpg",
    ],
    [
      // Irwin / Erwin
      "assets/images/battery/Irwin.png",
    ],
    [
      // Eubanks
      "assets/images/battery/Eubanks.jpg",
    ],
    [
      // 127
      "assets/images/battery/127bunker.jpg",
    ],
    [
      // 128
      "assets/images/battery/Battery128.jpg",
    ],
    [
      // 240
      "assets/images/battery/240barnes.jpg",
    ],
    [
      // 241
      "assets/images/battery/241gun.jpg",
    ],
    [
      // 242
      "assets/images/battery/242gun.jpg",
    ],
    [
      // AMTB
      "assets/images/battery/AMTB.jpg",
    ],
    [
      // 155mm Field
      "assets/images/battery/155mmFieldGuns.jpg",
    ],
    [
      // Anti Air Missiles
      "assets/images/battery/antiair.jpg",
    ],
  ];

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
              for (int i = 0; i < phTitles.length; i += 2)
                createDouble(
                    phTitles[i],
                    phImages[i],
                    phDescriptions[i],
                    phPhotos[i],
                    phTitles[i + 1],
                    phImages[i + 1],
                    phDescriptions[i + 1],
                    phPhotos[i + 1])
            ])));
  }

  createCard(title, mainImage, description, photos) {
    return Container(
        width: Device.safeBlockHorizontal * 50,
        height: Device.height / 8.5,
        child: Card(
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              createOverlay(title, mainImage, description, photos);
            },
            child: Column(
              children: [
                Image.asset(mainImage, fit: BoxFit.fitWidth),
                Text(
                  title,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ));
  }

  createOverlay(title, mainImage, description, photos) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => PostHistoryView(
                  title: title,
                  mainImage: mainImage,
                  photos: photos,
                  historyDescription: description,
                )));
  }

  createDouble(titleOne, imageOne, descriptionOne, photosOne, titleTwo,
      imageTwo, descriptionTwo, photosTwo) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          createCard(titleOne, imageOne, descriptionOne, photosOne),
          createCard(titleTwo, imageTwo, descriptionTwo, photosTwo),
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
