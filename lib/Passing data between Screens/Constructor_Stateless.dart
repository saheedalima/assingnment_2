import 'package:flutter/material.dart';

class Constructor_Stateless extends StatelessWidget {

  final String n1,n3;
  final int n2;

   Constructor_Stateless({Key? key,  required this.n1, required this.n2, required this.n3}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text(n1),),
     body: Center(
        child: Column(
          children: [
           Text("age$n2"),
            SizedBox(width: 10,),
            Text("place$n3"),
          ],
        ),
      ),
    );
  }
}
