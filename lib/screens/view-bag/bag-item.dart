import 'package:DROHealthPharmacy/bloc/default.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class BagItem extends StatelessWidget {
  const BagItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainBloc mainBloc = Provider.of<MainBloc>(context);
    return Expanded(
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: mainBloc.productsInBag.length,
        itemBuilder: (index, context){
          return  Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      "assets/images/items/image1.png",
                      fit: BoxFit.cover,
                      width: 90.0,
                      height: 90.0,
                    )),
                SizedBox(
                  width: 15,
                ),
                Text(
                  '1X',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'ProximaNova',
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Vitamin E 400',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'ProximaNova',
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Capsule',
                      style: TextStyle(
                        fontSize: 12.5,
                        fontFamily: 'ProximaNova',
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  '925',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'ProximaNova',
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 15,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}