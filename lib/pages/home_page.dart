import 'package:reto1_donut_app_roger_maldonado/utils/my_tab.dart';
import '../tab/pizza_tab.dart';
import '../tab/burger_tab.dart';
import '../tab/donut_tab.dart';
import '../tab/pastel_tab.dart';
import '../tab/soda_tab.dart';


import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [ 

    //dounut tab
    const MyTab(iconPath: 'lib/icons/soda.png'),
    const MyTab(iconPath: 'lib/icons/burger.png'),
    const MyTab(iconPath: 'lib/icons/pastel.png'),
    const MyTab(iconPath: 'lib/icons/pizza.png'),
    const MyTab(iconPath: 'lib/icons/donut.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,

      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(icon: Icon(Icons.menu, color: Colors.grey[800], size:36 ), onPressed: () {print("mensaje1");},),
          ),
          actions:  [Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: IconButton(icon: Icon(Icons.person, color: Colors.grey[800], size:36), onPressed: () {print("mensaje2");},),
          )],
      
      
        ),
        body: Column(children: [
          //texto
          const Padding(
            padding:  EdgeInsets.all(24.0),
            child: Row(
              children: [
                Text("I want to ",style: TextStyle(fontSize: 32),),
                Text("Eat",style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),),
      
              ],
            ),
          ),
          //Tab bar
          TabBar(tabs: myTabs),
          Expanded(child: TabBarView(children: [
          sodaTab(),
          burgerTab(),
          pastelTab(),
          pizzaTab(),
          donutTab()
          ]))
          //Tab bar view 
        ],),
      ),
    );
  }
}