import 'dart:ui';
import 'package:DROHealthPharmacy/bloc/default.dart';
import 'package:DROHealthPharmacy/screens/view-bag/index.dart';
import 'package:DROHealthPharmacy/utils/color.dart';
import 'package:DROHealthPharmacy/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomDialogBox extends StatefulWidget {
  final String name;
  const CustomDialogBox({Key key, this.name}) : super(key: key);

  @override
  _CustomDialogBoxState createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Constants.padding),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }
  contentBox(context){
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: Constants.padding,
              top: 40, right:
              Constants.padding,bottom: Constants.padding
          ),
          margin: EdgeInsets.only(top: Constants.avatarRadius),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(color: Colors.black,offset: Offset(0,10),
                    blurRadius: 10
                ),
              ]
          ),
        child:  Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 10,
              ),
              Text('Successful',
                style: TextStyle(
                  fontSize: 14.5,
                  fontFamily: 'ProximaNova',
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),),
              SizedBox(
                height: 20,
              ),
              Text(
                  '${widget.name} has been added to your bag',
                style: TextStyle(
                  fontSize: 14.5,
                  fontFamily: 'ProximaNova',
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)
                    => ViewBag()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: HexColor("0DB7B6")
                  ),
                  height: 45,
                  width: double.infinity,
                  child:  Center(
                    child: Text('View Bag',
                      style: TextStyle(
                        fontSize: 14.5,
                        fontFamily: 'ProximaNova',
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: HexColor("0DB7B6")
                  ),
                  height: 45,
                  width: double.infinity,
                  child:  Center(
                    child: Container(
                      child: Text('Done',
                        style: TextStyle(
                          fontSize: 14.5,
                          fontFamily: 'ProximaNova',
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
          left: Constants.padding,
          right: Constants.padding,
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: Constants.avatarRadius,
            child: Container(
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(Constants.avatarRadius)),
                  child: Lottie.asset(
                    'assets/lottie/tick.json',
                    repeat: false,
                    fit: BoxFit.fill,
                  )
              ),
            ),
          ),
        ),
      ],
    );
  }
}