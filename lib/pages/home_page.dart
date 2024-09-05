import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: const Column(children: [
        //texto
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            children: [
              Text("I want to ",style: TextStyle(fontSize: 32),),
              Text("Eat",style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),),

            ],
          ),
        )
        //Tab bar

        //Tab bar view 
      ],),
    );
  }
}