import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Stack_ex(),));
}
class Stack_ex extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Stack(
        children: [
          Container(color: Colors.teal,),
          Container(color: Colors.yellow,height: 350,width: 350,),
          Container(color: Colors.green,height: 200,width: 200,),
          Positioned(top: 400,left: 400,  //positon align cheyyan vendi
              child: Container(color: Colors.red,height: 100,width: 100,)),
        ],
      ),),
    );
  }
}
