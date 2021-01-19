import 'package:DROHealthPharmacy/utils/color.dart';
import 'package:flutter/material.dart';

final Color darkPurple = HexColor("#7B4397");
final Color greyColor = HexColor("#909090");
final Color droPurple = HexColor("#9F5DE2");
final Color droTurquoise = HexColor("#0CB8B6");


ThemeData appTheme = new ThemeData(
  textSelectionHandleColor: Colors.white,
  primaryColor: droPurple,
  primaryColorDark: darkPurple,
  fontFamily: "CircularStd",
);

TextStyle inputTextStyle = TextStyle(
  fontSize: 16.0,
  fontFamily: 'CircularStd"',
  fontWeight: FontWeight.w300,
  color: Colors.white,
);
TextStyle inputTextStyleBold = TextStyle(
  fontSize: 14.0,
  fontFamily: 'CircularStd"',
  fontWeight: FontWeight.w500,
  color: Colors.white,
);
TextStyle subheadingTextStyle = const TextStyle(
    color: Colors.white,
    fontFamily: 'CircularStd"',
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
  fontFamily: 'CircularStd"',
  color: HexColor("#F8F5FF"),
);
