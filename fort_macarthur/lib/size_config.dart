import 'package:flutter/material.dart';

class SizeConfig {
  //universal
  static late MediaQueryData
      _mediaQueryData; // allows us to ask queries about the screen
  static double screenWidth = 0.0;
  static double screenHeight = 0.0;
  static double blockSizeHorizontal =
      0.0; // The positional grid space horizontally
  static double blockSizeVertical = 0.0; // ^^ but vertical

  static double _safeAreaHorizontal = 0.0; // space without headers/footer
  static double _safeAreaVertical = 0.0; // ^^ i.e. our positional space
  static double safeBlockHorizontal = 0.0; // Our positions in that space
  static double safeBlockVertical = 0.0;

  static const double edgeINSETS =
      10.0; // uniform egde placement for the moment
  static const double borderRADIUS =
      15.0; // our incline on  our home page white container
  static const double fontHEADERSIZE = 30; // Size for important text
  static const double fontHOMESIZE = 25; // size for sub-important text
  static const double fontDISCRIPTIONSIZE = 18; // Basic text size

  static const Color backroundCOLOR =
      Color(0xffc5c0ad); // blue in background colour

  static const double axisSPACING =
      20.0; // if unsure what to use use this as default

  static const double cardLogoSize = 120.0; // Logo size as per home page
  static const double logoSize = 40.0; // Logo size for video

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context); // Gets the size of our screen
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;

    _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
    safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;
  }
}
