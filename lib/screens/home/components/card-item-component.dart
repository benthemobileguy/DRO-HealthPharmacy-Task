import 'package:flutter/material.dart';
class CardItemComponent extends StatelessWidget {
  List<String> categories = [];
  List<String> images = [];
  CardItemComponent({
    Key key,
    this.categories,
    this.images
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 4,
      children: List.generate(6, (index){
       return Card(
          child: Container(
            width: 200.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(images[index]),
                          fit: BoxFit.cover
                      )
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(categories[index],
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'CircularStd',
                      fontWeight: FontWeight.w500,
                    ),),
                ),
              ],
            ),
          ),
        );
      }));
  }
}
