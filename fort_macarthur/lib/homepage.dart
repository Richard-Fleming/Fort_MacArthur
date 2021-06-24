import 'package:flutter/material.dart';
import 'package:fort_macarthur/aboutus.dart';
import 'package:url_launcher/url_launcher.dart';
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
                title: "About us!",
                subtitle: "Our Museum",
                imgSrc: "assets/images/frontpage.jpg",
                desc:
                    "The Fort MacArthur Museum is dedicated to the preservation and interpretation of the history of Fort MacArthur, a U.S. Army post which guarded the Los Angeles harbor from 1914 to 1974. The Museum was established in 1985, and it is housed in the corridors and galleries of historic Battery Osgood-Farley. The Fort MacArthur Reservations hold an important collection of historical structures which were part of the U.S. Army's role in the defense of the American continental coastline from invasion. These structures clearly trace the development of American coastal defenses, from the all big gun era of the turn of the century to the missile era of today.\n\nThe rooms, galleries and corridors of the Museum contain a variety of exhibits and displays which include: the history of Los Angeles harbor defenses, home-front activities in the greater Los Angeles area during the World Wars, Civil Defense, American Pacific Theater military campaigns, early American Air Defenses and the important role of Los Angeles as a military port for both the Army and the Navy.",
                icon: Icon(Icons.museum),
                action: null,
                buttonRoute: aboutUsRoute(context)),
            CustomCards(
                title: "Donations to the Museum",
                subtitle: "Become a part of our team!",
                imgSrc: "assets/images/paypal.jpg",
                desc:
                    "More than 40% of the museums operating budget comes from people who like what we do and want to contribute to our success.\n\nThe Fort MacArthur Museum Association is a 501(C)(3) non-profit corporation registered with the IRS and the State of California.\n\nYour donations help us continue our work by providing funding for materials necessary for us to continue our restoration, preservation, and educational activities.\n\nDonations don't have to be substantial, as we have a track record of making a little money go a long way, 20 dollars can buy a can of paint, a length of lumber, box of nails, or an assortment of other needed items.\n\nDonations over 100 dollars will receive a separate letter of acknowledgement.\n\nClick the paypal image to redirect you to paypal site",
                icon: Icon(Icons.credit_card),
                action: () => {launchPayPal()},
                buttonRoute: null),
            CustomCards(
                title: "Getting to the Museum",
                subtitle: "New directions for accessing the Museum",
                imgSrc: "assets/images/LocalMap2.jpg",
                desc:
                    "Recent changes to the property have caused the City of Los Angeles to re-direct the vehicle access to the museum. Please follow the blue line on the map below and enter through the 32nd St. Gate.\n\nClick the map above to link to Google Maps for customized directions to the Fort MacArthur Museum.",
                icon: Icon(Icons.directions),
                action: null,
                buttonRoute: null),
          ]),
        ))));
  }
}

void launchPayPal() async {
  const url =
      'https://www.paypal.com/donate?token=0V2BzPfPGPPUOHJPF8r-oQcFPTKjCjnZFeTmSYhZlP1M4ZAfm-1oo6hXGJSZ7uAuKI2NASr3tRoePmzr';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

aboutUsRoute(context) {
  return TextButton(
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => AboutUsPage(
                    inLearnMore: true,
                  )));
    },
    child: const Text('Learn more'),
  );
}
