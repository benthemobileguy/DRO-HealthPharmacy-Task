import 'package:DROHealthPharmacy/screens/home/components/card-item-component.dart';
import 'package:DROHealthPharmacy/screens/home/components/circle-button.dart';
import 'package:DROHealthPharmacy/theme/style.dart';
import 'package:DROHealthPharmacy/utils/global-variables.dart';
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
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleButton(image: "assets/images/sort.png",),
              SizedBox(
                width: 40,
              ),
           CircleButton(
image: "assets/images/filter.png",
           ),
              SizedBox(
                width: 40,
              ),
              CircleButton(
                image: "assets/images/search.png",
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          CardItemComponent(),
          SizedBox(
            height: 30,
          ),
        ],
      )
    );
  }
}

