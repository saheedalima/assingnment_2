import 'package:flutter/material.dart';

class Constructor_Stateful extends StatefulWidget {

   String x1,x3;
  int x2;
   Constructor_Stateful({Key? key, required this.x1, required this.x2, required this.x3}) : super(key: key);

  @override
  State<Constructor_Stateful> createState() => _Constructor_StatefulState();
}

class _Constructor_StatefulState extends State<Constructor_Stateful> {
  @override
  Widget build(BuildContext context) {
    String? x1=widget.x1;

    return Scaffold(
      appBar: AppBar(title: Text(x1),),
      body: Center(
        child: Column(
          children: [
            Text("age${widget.x2}"),
            Text("place${widget.x3}")
          ],
        ),
      ),

    );
  }
}
