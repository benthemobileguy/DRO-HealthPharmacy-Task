import 'package:DROHealthPharmacy/theme/style.dart';
import 'package:DROHealthPharmacy/utils/global-variables.dart';
import 'package:flutter/material.dart';
class CardItemComponent extends StatelessWidget {
  CardItemComponent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        child: GridView.count(
            childAspectRatio: MediaQuery.of(context).size.height / 850,
          shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          children: List.generate(images.length, (index){
           return Card(
             elevation: 3.0,
              child: Container(
                height: 300,
                width: 200.0,
                child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 120.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(images[index]),
                                fit: BoxFit.contain
                            )
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(names[index],
                        style: defaultTextStyle,),
                      Text(types[index],
                        style: lightTextStyle,),
                      Text(quantity[index],
                        style: lightTextStyle,),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          decoration: BoxDecoration(
                              color: greyColor,
                            borderRadius: BorderRadius
                                .all(Radius.circular(20))
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                          child: Text('\u20A6${prices[index]}',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'ProximaNova"',
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          })),
      ),
    );
  }
}
