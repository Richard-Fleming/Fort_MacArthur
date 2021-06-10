import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'device.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fort_macarthur/resultpages.dart';

class GetJson extends StatelessWidget {
  // accept the langname as a parameter

  final String battname;
  GetJson(this.battname);
  late String assettoload;
  late int i;
  var randomArray;

  // a function
  // sets the asset to a particular JSON file
  // and opens the JSON
  setasset() {
    if (battname == "Battery Osgood - Farley") {
      assettoload = "assets/Quiz/Battery_Osgood.json";
    } else if (battname == "Battery Barlow - Saxton") {
      assettoload = "assets/Quiz/Battery_Barlow_Saxton.json";
    } else if (battname == "Battery Leary - Merriam") {
      assettoload = "assets/Quiz/Battery_Leary_Merriam.json";
    }
  }

  genrandomarray() {
    var distinctIds = [];
    var rand = new Random();
    for (;;) {
      distinctIds.add(
        rand.nextInt(10 - 0),
      );
      randomArray = distinctIds.toSet().toList();
      i = randomArray[0];
      if (randomArray.length < 10) {
        continue;
      } else {
        break;
      }
    }
    print(randomArray);
  }

  @override
  Widget build(BuildContext context) {
    genrandomarray();
    // this function is called before the build so that
    // the string assettoload is avialable to the DefaultAssetBuilder
    setasset();
    // and now we return the FutureBuilder to load and decode JSON
    return FutureBuilder(
      future:
          DefaultAssetBundle.of(context).loadString(assettoload, cache: false),
      builder: (context, snapshot) {
        List? mydata = json.decode(snapshot.data.toString());
        if (mydata == null) {
          return Scaffold(
            body: Center(
              child: Text(
                "Loading",
              ),
            ),
          );
        }
        return Quizpage(mydata: mydata, i: i, randomArray: randomArray);
      },
    );
  }
}

class Quizpage extends StatefulWidget {
  final List mydata;
  final int i;
  final List randomArray;

  Quizpage(
      {Key? key,
      required this.mydata,
      required this.i,
      required this.randomArray})
      : super(key: key);
  @override
  _QuizpageState createState() => _QuizpageState(mydata, i, randomArray);
}

class _QuizpageState extends State<Quizpage> {
  final List mydata;
  late int i;
  final List randomArray;
  _QuizpageState(this.mydata, this.i, this.randomArray);

  Color colortoshow = Colors.indigoAccent;
  Color right = Colors.green;
  Color wrong = Colors.red;
  int marks = 0;
  bool disableAnswer = false;

  // extra varibale to iterate
  int j = 1;
  int timer = 30;
  String showtimer = "30";

  Map<String, Color> btncolor = {
    "a": Colors.indigoAccent,
    "b": Colors.indigoAccent,
    "c": Colors.indigoAccent,
    "d": Colors.indigoAccent,
  };

  bool canceltimer = false;

  // code inserted for choosing questions randomly
  // to create the array elements randomly use the dart:math module
  // -----     CODE TO GENERATE ARRAY RANDOMLY

  // overriding the initstate function to start timer as this screen is created
  @override
  void initState() {
    starttimer();

    super.initState();
  }

  // overriding the setstate function to be called only if mounted
  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  void starttimer() async {
    const onesec = Duration(seconds: 1);
    Timer.periodic(onesec, (Timer t) {
      setState(() {
        if (timer < 1) {
          t.cancel();
          nextquestion();
        } else if (canceltimer == true) {
          t.cancel();
        } else {
          timer = timer - 1;
        }
        showtimer = timer.toString();
      });
    });
  }

  void nextquestion() {
    canceltimer = false;
    timer = 30;
    setState(() {
      if (j < 10) {
        i = randomArray[j];
        j++;
        print("The question number is:  $j and the index value of this is $i");
      } else {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => ResultPage(marks: marks),
        ));
      }
      btncolor["a"] = Colors.indigoAccent;
      btncolor["b"] = Colors.indigoAccent;
      btncolor["c"] = Colors.indigoAccent;
      btncolor["d"] = Colors.indigoAccent;
      disableAnswer = false;
    });
    starttimer();
  }

  void checkanswer(String k) {
    // in the previous version this was
    // mydata[2]["1"] == mydata[1]["1"][k]
    // which i forgot to change
    // so nake sure that this is now corrected
    if (mydata[2][i.toString()] == mydata[1][i.toString()][k]) {
      // just a print sattement to check the correct working
      // debugPrint(mydata[2][i.toString()] + " is equal to " + mydata[1][i.toString()][k]);
      marks = marks + 5;
      // changing the color variable to be green
      colortoshow = right;
    } else {
      // just a print sattement to check the correct working
      // debugPrint(mydata[2]["1"] + " is equal to " + mydata[1]["1"][k]);
      colortoshow = wrong;
    }
    setState(() {
      // applying the changed color to the particular button that was selected
      btncolor[k] = colortoshow;
      canceltimer = true;
      disableAnswer = true;
    });
    // nextquestion();
    // changed timer duration to 1 second
    Timer(Duration(seconds: 2), nextquestion);
  }

  Widget choicebutton(String k) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      child: MaterialButton(
        onPressed: () => checkanswer(k),
        child: Text(
          mydata[1][i.toString()][k],
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Alike",
            fontSize: 16.0,
          ),
          maxLines: 1,
        ),
        color: btncolor[k],
        splashColor: Colors.indigo[700],
        highlightColor: Colors.indigo[700],
        minWidth: 200.0,
        height: 45.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return WillPopScope(
      onWillPop: () {
        return showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text(
                    "Quizstar",
                  ),
                  content: Text("You Can't Go Back At This Stage."),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        'Ok',
                      ),
                    )
                  ],
                )).then((value) => value as bool);
      },
      child: Scaffold(
        body: Stack(
          children: [
            SvgPicture.asset(
              "assets/images/svg/bg.svg",
              allowDrawingOutsideViewBox: true,
              width: Device.safeBlockHorizontal *
                  250, // ! This is well over what is needed but it does no harm as without the allowDrawingOutsideViewBox and extra width spacing it by default does not fit the screen
              fit: BoxFit.fill,
            ),
            Column(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      mydata[0][i.toString()],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 26.0,
                        color: Colors.white,
                        fontFamily: "Quando",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: AbsorbPointer(
                    absorbing: disableAnswer,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          choicebutton('a'),
                          choicebutton('b'),
                          choicebutton('c'),
                          choicebutton('d'),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.topCenter,
                    child: Center(
                      child: Text(
                        showtimer,
                        style: TextStyle(
                          fontSize: 55.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Times New Roman',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
