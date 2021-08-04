import 'package:flutter/material.dart';
import 'package:fort_macarthur/image_grid.dart';
import 'package:fort_macarthur/panoramaView.dart';
import 'package:fort_macarthur/device.dart';

class VirtualTours extends StatefulWidget {
  @override
  _VirtualToursState createState() => _VirtualToursState();
}

class _VirtualToursState extends State<VirtualTours> {
  final List<PanoData> batteryData = [
    PanoData(
        title: "Osgood-Farley",
        panoPath: "assets/images/osgood_pano.jpg",
        history: "Battery Osgood-Farley was constructed during the years 1916-1919 " +
            "under the fortification program outlined by the Taft Board Report of 1906. " +
            "Although constructed as a single two-gun emplacement, each gun was " +
            "originally designated as a separate tactical battery, hence the two names. " +
            "Later, the battery was considered to be a single tactical unit. " +
            "These 14-inch disappearing guns could fire a 1560 pound projectile " +
            "fourteen miles out into the Catalina Channel. Full caliber firing " +
            "Battery Osgood beginning to recoil during a practice firing practice " +
            "was rare, however, because of the damage caused by the concussions " +
            "to nearby residences. Battery Osgood's gun was fired only 116 times and " +
            "Battery Farley's fired 121 times. Even though the disappearing " +
            "carriages of Battery Osgood-Farley were considered to be obsolete " +
            "by the mid-1920s, they remained in active service until they were " +
            "replaced by new ordnance in the mid-1940s. A section of Battery " +
            "Osgood-Farley was gas-proofed during World War Two for use as a " +
            "radio station and fire control switchboard room. Battery Osgood-Farley's" +
            " guns were declared surplus in 1944 and cut up for scrap sometime after 1946. " +
            "The Army continued to use the rooms and corridors of the battery " +
            "for various purposes with little modification until 1974. " +
            "While the guns and some of the electrical equipment were removed, " +
            "much of the rest of the hardware such as the doors, gates, " +
            "electrical and plumbing services were left intact. This is in marked " +
            "contrast to many of the other modern era (post-1890) gun emplacements " +
            "around the nation, which have been gutted of all metal, " +
            "wiring and plumbing by the Army, humidity and vandals. Battery " +
            "Osgood-Farley may be the best preserved vshp modern age coastal " +
            "defense gun emplacement in the United States today. The Army recognized " +
            "the historical significance of Battery Osgood-Farley and placed it " +
            "on the Register of National Historical Places in 1976. The Fort MacArthur " +
            "Museum was established at Battery Osgood - Farley in 1985 and is dedicated " +
            "to the preservation and interpretation of the history of Fort MacArthur. " +
            "Fort MacArthur’s reservations hold an important collection of historical " +
            "structures tied to the U.S. Army’s role in the defense of the American " +
            "continental coastline from invasion. These structures, which are " +
            "interpreted at the museum, clearly define the development of American " +
            "coastal defenses, from the all-gun era at the turn of the twentieth " +
            "century, to the modern missile era of today.",
        details: BatteryStats(
            constructionStart: "September 15, 1916",
            constructionEnd: "October 10, 1919",
            dateOfTransfer: "October 10, 1919",
            constructionCost: 211426,
            constructionMaterials: "Portland Concrete - Steel Reinforced",
            gunTypeAndManufacturer: "M1910M1 14inch 34 Caliber - Watervliet",
            carriageTypeAndManufacturer:
                "M1907M1 Disappearing Carriage - Watertown",
            weight: 410,
            fireRadius: 170,
            gunsProduced: "16. 4 US (Fort MacArthur) 12 Territorial"),
        images: <ImageGridData>[
          ImageGridData(
              imagePath: "assets/images/osgoodSlideshow/battery-osgood.jpg",
              title: "Battery Osgood today"),
          ImageGridData(
              imagePath: "assets/images/osgoodSlideshow/battery-osgood3.jpg",
              title: "Museum Grounds from the top of the Parapet Wall"),
          ImageGridData(
              imagePath: "assets/images/osgoodSlideshow/battery-osgood4.jpg",
              title: "Museum Grounds & Battery Osgood"),
          ImageGridData(
              imagePath: "assets/images/osgoodSlideshow/BtryOsgood.jpg",
              title: "Battery Osgood during a firing practice in the 1920s"),
          ImageGridData(
              imagePath: "assets/images/osgoodSlideshow/MuseumEntrance.jpg",
              title: "Entrance to the Magazine and Plotting Room"),
          ImageGridData(
              imagePath: "assets/images/osgoodSlideshow/OsFarAir.jpg",
              title: "Battery Osgood-Farley as viewed from the air"),
          ImageGridData(
              imagePath: "assets/images/osgoodSlideshow/OsgoodFarleyBP.jpg",
              title: "Battery Osgood Blueprint"),
          ImageGridData(
              imagePath: "assets/images/osgoodSlideshow/rear-gallery.jpg",
              title: "The Rear Gallery viewed from the top of the battery"),
          ImageGridData(
              imagePath: "assets/images/osgoodSlideshow/gunLoadingOs.jpg"),
          ImageGridData(
              imagePath: "assets/images/osgoodSlideshow/guySitting.jpg"),
          ImageGridData(
              imagePath: "assets/images/osgoodSlideshow/munition.jpg"),
          ImageGridData(
              imagePath: "assets/images/osgoodSlideshow/osgoodOld.jpg"),
          ImageGridData(
              imagePath: "assets/images/osgoodSlideshow/propshell.jpg"),
          ImageGridData(
              imagePath: "assets/images/osgoodSlideshow/TIoperator.jpg")
        ]),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Device.backroundCOLOR,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Center(child: Image.asset("assets/images/fort_macarthur_map.png")),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: batteryData
                .map((data) => ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.lightGreen[900]),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PanoView(
                                    data: data,
                                  )));
                    },
                    child: Text("Battery " + data.title)))
                .toList(),
          )
        ],
      ),
    );
  }
}
