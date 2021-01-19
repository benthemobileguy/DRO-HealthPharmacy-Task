import 'package:DROHealthPharmacy/screens/home/components/card-item-component.dart';
import 'package:DROHealthPharmacy/screens/home/components/circle-button.dart';
import 'package:DROHealthPharmacy/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:hexcolor/hexcolor.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSearchTextShown = false;
  TextEditingController _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Widget searchBar = TextField(
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontFamily: 'ProximaNova',
        fontSize: 14,
      ),
      controller: _textController,
      cursorColor: HexColor("#5D5D5D"),
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              borderSide: BorderSide(color: HexColor("#5D5D5D"))),
          border: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(20.0),
          ),
          prefixIcon: IconButton(
            onPressed: (){

            },
            icon: Icon(Icons.search,
                color: Colors.black54),
          ),
          suffixIcon: IconButton(
            onPressed: (){
              setState(() {
                _textController.text= "";
              });
            },
            icon: Icon(Icons.close,
                 color: Colors.black54),
          ),
          hintText: 'Search',
          hintStyle: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w500,
            fontFamily: 'ProximaNova',
            fontSize: 14,
          ),
          contentPadding: const EdgeInsets.all(10.0)),
      onChanged: (string) {
        if(string!=""){
          setState(() {
            isSearchTextShown = true;
          });
        } else{
          setState(() {
            isSearchTextShown = false;
          });
        }
        //check for text characters
        // filteredData = users
        //     .where((u) => ((u.first_name.toLowerCase() +
        //     " " +
        //     u.last_name.toLowerCase())
        //     .contains(string.toLowerCase()) ||
        //     u.industry.toLowerCase().contains(string.toLowerCase()) ||
        //     u.country.toLowerCase().contains(string.toLowerCase())))
        //     .toList();
        // if (filteredData.isEmpty) {
        //   setState(() {
        //     isSearchingMore = true;
        //   });
        // } else {
        //   setState(() {
        //     isSearchingMore = false;
        //   });
        },
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Icon(
          Mdi.arrowLeft,
          color: Colors.black,
        ),
        title: Text(
          "125 Item(s)",
          style: defaultTextStyle,
        )
      ),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleButton(image: "assets/images/sort.png",),
              SizedBox(
                width: 40,
              ),
           CircleButton(
image: "assets/images/filter.png",
           ),
              SizedBox(
                width: 40,
              ),
              CircleButton(
                image: "assets/images/search.png",
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
              child: searchBar),
          SizedBox(
            height: 15,
          ),
          CardItemComponent(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft:
                Radius.circular(30.0), topRight: Radius.circular(30.0)),
                color: darkPurple
              ),
              height: 80,
              child: Column(
                children: [
                  Container(
                    width: 50,
                    height: 20,
                    child: new Icon(
                      Icons.horizontal_rule_rounded,
                      size: 35,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: [
                      new Image.asset("assets/images/bag.png",
                        color: Colors.white,
                        height: 25,
                        width: 60,),
                      Text('Bag',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'ProximaNova"',
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white
                        ),
                        child: Text('4',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'ProximaNova"',
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),),
                      ),
                      SizedBox(
                        width: 30,
                      )
                    ],
                  ),
                ],
              ),

            ),
          )
        ],
      )
    );
  }
}

