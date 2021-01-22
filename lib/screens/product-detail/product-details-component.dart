import 'package:DROHealthPharmacy/theme/style.dart';
import 'package:flutter/material.dart';
class ProductDetailsComponent extends StatelessWidget {
  final String title;
  final String image;
  final String subTitle;
  const ProductDetailsComponent({
    Key key, this.title, this.image, this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        new Image.asset(image,
          height: 25,
          width: 25,
          color: darkPurple,),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
              style: TextStyle(
                fontSize: 12.5,
                fontFamily: 'ProximaNova',
                fontWeight: FontWeight.w700,
                color: Colors.blueGrey.withOpacity(0.8),
              ),),
            Text(subTitle,
              style: TextStyle(
                fontSize: 12.5,
                fontFamily: 'ProximaNova',
                fontWeight: FontWeight.w700,
                color: Colors.blueGrey,
              ),),
          ],
        ),
      ],
    );
  }
}