import 'package:DROHealthPharmacy/bloc/default.dart';
import 'package:DROHealthPharmacy/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:provider/provider.dart';
class ProductDetail extends StatefulWidget {
 final int index;
  const ProductDetail({Key key, this.index}) : super(key: key);
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  MainBloc mainBloc;
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    mainBloc = Provider.of<MainBloc>(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(
           icon: Icon(Mdi.arrowLeft),
            color: Colors.black, onPressed: () {
             Navigator.pop(context);
              },
          ),
        actions: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 6, horizontal: 6),
            padding: EdgeInsets.only(left: 14, right: 14, top: 4, bottom: 4),
            decoration: BoxDecoration(
              borderRadius:
              BorderRadius.circular(12.0),
              color: droPurple
            ),
            child: Row(
              children: [
                new Image.asset("assets/images/bag.png",
                  color: Colors.white,
                  height: 20,
                  width: 20,),
                SizedBox(
                  width: 6,
                ),
                Text('0',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'ProximaNova"',
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 250,
              height: 250,
              child: new Image.asset
                (mainBloc.products[widget.index].image),
            ),
          ),

        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
