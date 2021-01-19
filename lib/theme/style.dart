import 'package:DROHealthPharmacy/utils/color.dart';
import 'package:flutter/material.dart';

final Color darkPurple = HexColor("#7B4397");
final Color greyColor = HexColor("#909090");
final Color droPurple = HexColor("#9F5DE2");
final Color circleBg = HexColor("#F2F2F2");
final Color droTurquoise = HexColor("#0CB8B6");


ThemeData appTheme = new ThemeData(
  textSelectionHandleColor: Colors.white,
  primaryColor: droPurple,
  primaryColorDark: darkPurple,
  fontFamily: "ProximaNova",
);


TextStyle defaultTextStyle = TextStyle(
  fontSize: 16,
  fontFamily: 'ProximaNova"',
  fontWeight: FontWeight.w700,
  color: Colors.black,
);
TextStyle lightTextStyle = TextStyle(
  fontSize: 12.5,
  fontFamily: 'ProximaNova"',
  fontWeight: FontWeight.w500,
  color: greyColor,
);