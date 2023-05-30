import 'package:flutter/material.dart';

class BottoNavigatin_Bar extends StatefulWidget {

  @override
  State<BottoNavigatin_Bar> createState() => _BottoNavigatin_BarState();
}

class _BottoNavigatin_BarState extends State<BottoNavigatin_Bar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Navigatin Bar"),),
      body: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,),label: "Home",
            )
          ]),
    );
  }
}
