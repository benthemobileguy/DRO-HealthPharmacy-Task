import 'package:DROHealthPharmacy/bloc/default.dart';
import 'package:DROHealthPharmacy/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 210,
                  height: 210,
                  child: new Image.asset
                    (mainBloc.products[widget.index].image),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(mainBloc.products[widget.index].name,
                style: TextStyle(
                  fontSize: 18.5,
                  fontFamily: 'ProximaNova"',
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),),
              Text('${mainBloc.products[widget.index].quantity}',
                style: TextStyle(
                  fontSize: 12.5,
                  fontFamily: 'ProximaNova"',
                  fontWeight: FontWeight.w500,
                  color: greyColor,
                ),),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                      shape: BoxShape.circle
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('SOLD BY',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'ProximaNova"',
                          fontWeight: FontWeight.w700,
                          color: greyColor,
                        ),),
                      SizedBox(
                        height: 3,
                      ),
                      Text('Emzor Pharmaceuticals',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'ProximaNova"',
                          fontWeight: FontWeight.w700,
                          color: Colors.blueGrey,
                        ),),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
             Row(
               children: [
                 Container(
                   padding: EdgeInsets.all(8),
                   decoration: BoxDecoration(
                     border: Border.all(color: Colors.grey),
                     borderRadius: BorderRadius.all(
                         Radius.circular(10)),
                   ),
                   child: Row(
                     children: [
                       Icon(
                         Mdi.minus
                       ),
                       SizedBox(
                         width: 20,
                       ),
                       Text('1',
                         style: TextStyle(
                           fontSize: 18,
                           fontFamily: 'ProximaNova"',
                           fontWeight: FontWeight.w500,
                           color: Colors.black87,
                         ),),
                       SizedBox(
                         width: 20,
                       ),
                       Icon(
                           Mdi.plus
                       ),
                     ],
                   ),
                 ),
                 SizedBox(
                   width: 10,
                 ),
                 Text('Packs(s)',
                   style: TextStyle(
                     fontSize: 14,
                     fontFamily: 'ProximaNova"',
                     fontWeight: FontWeight.w400,
                     color: greyColor,
                   ),),
                 Spacer(),
                 Container(
                   margin: EdgeInsets.only(bottom: 8),
                   child: SvgPicture.asset(
                     'assets/images/svg/blacknaira.svg',
                     width: 9,
                     height: 9,
                     color: Colors.black87,
                   ),
                 ),
                 Text(mainBloc.products[widget.index].amount,
                   style: TextStyle(
                     fontSize: 14,
                     fontFamily: 'ProximaNova"',
                     fontWeight: FontWeight.w700,
                     color: Colors.black87,
                   ),),
               ],
             ),
              SizedBox(
                height: 40,
              ),
              Text('PRODUCT DETAILS',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'ProximaNova"',
                  fontWeight: FontWeight.w700,
                  color: Colors.blueGrey,
                ),),
              SizedBox(
                height: 14,
              ),
            Row(
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
            ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
