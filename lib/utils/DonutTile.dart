import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
          final String donutFlavor;
          final String donutPrice;
          final dynamic donutColor;//Dinamico porque será usado para color
          final String imageName;

  final double borderRadius=24;

  const DonutTile({super.key, required this.donutFlavor, required this.donutPrice, this.donutColor, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      //decoration: BoxDecoration(color: donutColor[50]), //solo fue la prueba
    padding: const EdgeInsets.all(12),
    child:Container( decoration: BoxDecoration(color: donutColor[50],borderRadius: BorderRadius.circular(24)
     ),
    child: Column(
      children: [
        //Donut price
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
            decoration: BoxDecoration(
              color: donutColor[100],
              borderRadius: BorderRadius.only(topRight: Radius.circular(borderRadius), bottomLeft: Radius.circular(borderRadius))),
            padding:
             const EdgeInsets.symmetric(vertical: 18,horizontal: 8),
            child: Text(
              '\$$donutPrice',
              style:TextStyle(fontWeight: FontWeight.bold, fontSize:18, color: donutColor[800]),
             )
          
          )],
          //donut picture

        ),

             //donut picture
       Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
        child: Column(
          children: [
            Image.asset(imageName),
            Text(
              '$donutFlavor',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            Text(
              'Dunkin´s',
              style: TextStyle(
                //fontWeight: FontWeight.bold,
                fontSize: 15,
                color: donutColor[800],
              ),
            ),
            
          ],
        ),
      )

      //donut flavor text 
      //love icon + add button
      // 

      ],
 


    )

    )
    );
  }
}