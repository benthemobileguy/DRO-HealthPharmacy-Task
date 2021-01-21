import 'package:DROHealthPharmacy/model/product.dart';
import 'package:DROHealthPharmacy/screens/product-detail/index.dart';
import 'package:DROHealthPharmacy/theme/style.dart';
import 'package:DROHealthPharmacy/utils/global-variables.dart';
import 'package:flutter/material.dart';
class CardItemComponent extends StatelessWidget {
  List<Product> products;
  CardItemComponent({
    Key key,
    this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        child: GridView.count(
            childAspectRatio: MediaQuery.of(context).size.height / 900,
          shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          children: List.generate(products.length, (index){
           return GestureDetector(
             onTap: (){
               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context)
                 => ProductDetail()),
               );
             },
             child: Card(
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
                                  image: AssetImage(products[index].image),
                                  fit: BoxFit.contain
                              )
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(products[index].name,
                          style: defaultTextStyle,),
                        Text(products[index].type,
                          style: lightTextStyle,),
                        Text(products[index].quantity,
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
                            child: Text('\u20A6${products[index].amount}',
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
              ),
           );
          })),
      ),
    );
  }
}
