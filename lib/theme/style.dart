import 'package:DROHeaalthPharmacy/utils/color.dart';
import 'package:flutter/material.dart';

final Color darkPurple = HexColor("#7B4397");
final Color greyColor = HexColor("#909090");
final Color droPurple = HexColor("#9F5DE2");
final Color bottomBarColor = HexColor("#090015");
final Color bottomBarActiveColor = HexColor("#FCFCFC");
final Color bottomBarDefaultColor = HexColor("#ECECEC");
final Color backgroundColor = HexColor("#F1F3F8");
final Color toolbarColor = HexColor("#0C001B");
final Color accentColor = HexColor("#C68630");
final Color accentPurple = HexColor("#180332");
final Color tabIndicatorColor = HexColor("#FF9F1C");
final Color accentBright = HexColor("#8F71EB");

ThemeData appTheme = new ThemeData(
  textSelectionHandleColor: Colors.white,
  primaryColor: primaryColor,
  primaryColorDark: primaryColorDark,
  fontFamily: "CircularStd",
  primarySwatch: MaterialColor(
    HexColor.getColorFromHex("#09125D"),
    primarySwatch,
  ),
  // canvasColor: Colors.transparent,
);

TextStyle inputTextStyle = TextStyle(
  fontSize: 16.0,
  fontFamily: 'OpenSans',
  fontWeight: FontWeight.w300,
  color: Colors.white,
);
TextStyle inputTextStyleBold = TextStyle(
  fontSize: 14.0,
  fontFamily: 'OpenSans',
  fontWeight: FontWeight.w500,
  color: Colors.white,
);
TextStyle subheadingTextStyle = const TextStyle(
    color: Colors.white,
    fontFamily: 'Gilroy',
    fontSize: 14.0,
    fontWeight: FontWeight.w100);

TextStyle bottomBarTextStyle = TextStyle(
  fontSize: 12.0,
  fontFamily: 'CircularStd',
  fontWeight: FontWeight.w500,
  color: HexColor("#FCFCFC"),
);

TextStyle defaultTextStyle = TextStyle(
  fontSize: 14.5,
  fontFamily: 'CircularStd',
  color: HexColor("#F8F5FF"),
);

Map<int, Color> primarySwatch = {
  50: Color.fromRGBO(9, 18, 93, .1),
  100: Color.fromRGBO(9, 18, 93, .2),
  200: Color.fromRGBO(9, 18, 93, .3),
  300: Color.fromRGBO(9, 18, 93, .4),
  400: Color.fromRGBO(9, 18, 93, .5),
  500: Color.fromRGBO(9, 18, 93, .6),
  600: Color.fromRGBO(9, 18, 93, .7),
  700: Color.fromRGBO(9, 18, 93, .8),
  800: Color.fromRGBO(9, 18, 93, .9),
  900: Color.fromRGBO(9, 18, 93, 1),
};