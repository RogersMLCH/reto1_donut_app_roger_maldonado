import 'package:flutter/material.dart';
import 'package:reto1_donut_app_roger_maldonado/utils/DonutTile.dart';

class donutTab extends StatelessWidget {

  //list of donuts 
  final List donutsOnsale=[
    //[donutFlavor,donutPrice,donutColor,imageName]
    // [donutFlavor, donutPrice, donutColor, imageName]
    ["Ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "95", Colors.brown, "lib/images/chocolate_donut.png"],
  ];

  donutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
      itemCount: donutsOnsale.length,//longitus de cuantos elementos voy a tener 
      padding: EdgeInsets.all(12),
      gridDelegate: 
      const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1/1.5), //dos columnas 
      itemBuilder: (context,index){
        return DonutTile(
          donutFlavor: donutsOnsale[index][0],
          donutPrice: donutsOnsale[index][1],
          donutColor: donutsOnsale[index][2],
          imageName: donutsOnsale[index][3],

        );
      }
    );
  }
}