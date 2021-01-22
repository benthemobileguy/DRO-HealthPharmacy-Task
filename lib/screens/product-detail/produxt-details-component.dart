import 'package:flutter/material.dart';
class ProductDetailsComponent extends StatelessWidget {
  const ProductDetailsComponent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        new Image.asset("assets/images/pills.png",
          height: 25,
          width: 25,
          color: darkPurple,),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('PACK SIZE',
              style: TextStyle(
                fontSize: 12.5,
                fontFamily: 'ProximaNova"',
                fontWeight: FontWeight.w700,
                color: Colors.blueGrey.withOpacity(0.8),
              ),),
            Text('3x10',
              style: TextStyle(
                fontSize: 12.5,
                fontFamily: 'ProximaNova"',
                fontWeight: FontWeight.w700,
                color: Colors.blueGrey,
              ),),
          ],
        ),
      ],
    );
  }
}