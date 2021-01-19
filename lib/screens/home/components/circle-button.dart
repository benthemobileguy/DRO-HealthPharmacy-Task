import 'package:DROHealthPharmacy/theme/style.dart';
import 'package:flutter/material.dart';
class CircleButton extends StatelessWidget {
  String image;
  CircleButton({
    Key key,
    this.image
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      child:
      new Image.asset(image,
        width: 20, height: 20,),
      onPressed: (){},
      constraints: BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0,
      ),
      shape: CircleBorder(),
      fillColor: circleBg,
    );
  }
}