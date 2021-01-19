import 'package:DROHealthPharmacy/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Icon(
          Mdi.arrowLeft,
          color: Colors.black,
        ),
        title: Text(
          "125 Item(s)",
          style: defaultTextStyle,
        )
      ),
      body: Icon(Icons.sort_rounded),
    );
  }
}
