import 'package:DROHealthPharmacy/bloc/default.dart';
import 'package:DROHealthPharmacy/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mdi/mdi.dart';
import 'package:provider/provider.dart';
class ViewBag extends StatefulWidget {
  @override
  _ViewBagState createState() => _ViewBagState();
}

class _ViewBagState extends State<ViewBag> {
  MainBloc mainBloc;
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    mainBloc = Provider.of<MainBloc>(context);
  }
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.only(top: 25),
          decoration: BoxDecoration(
            color: darkPurple,
            borderRadius: BorderRadius.only(topRight:
            Radius.circular(40),
                topLeft: Radius.circular(40))
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height:10,
                ),
                Row(
                  children: [
                    Spacer(),
                    SizedBox(
                      width: 90,
                    ),
                    new Icon(Icons.horizontal_rule_rounded,
                      size: 50,color: Colors.white,),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white
                      ),
                      child: Text(mainBloc.noOfShoppingItems!=null?
                      '${mainBloc.noOfShoppingItems}':"0",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'ProximaNova',
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),),
                    ),
                    SizedBox(
                      width: 30,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    new Image.asset("assets/images/bag.png",
                      color: Colors.white,
                      height: 25,
                      width: 40,),
                    Text('Bag',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'ProximaNova',
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),),
                  ],
                ),
                Container(
                  child: Text('Bag',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'ProximaNova',
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}