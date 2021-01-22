import 'package:DROHealthPharmacy/bloc/default.dart';
import 'package:DROHealthPharmacy/utils/global-variables.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
        shrinkWrap: true,
        itemCount: mainBloc.productsInBag.length,
        itemBuilder: (context, index){
          return  Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: GestureDetector(
              onTap: (){
                Fluttertoast.showToast(msg: "Not yet implemented",
                    backgroundColor: Colors.redAccent,
                    textColor: Colors.white);
              },
              child: Container(
                child: Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          mainBloc.productsInBag[index].image,
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
                          mainBloc.productsInBag[index].quantity,
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'ProximaNova',
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          mainBloc.productsInBag[index].type,
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
                      '\u20A6 ${mainBloc.productsInBag[index].amount}',
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
              ),
            ),
          );
        },
      ),
    );
  }
}