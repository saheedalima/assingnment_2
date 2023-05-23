import 'package:flutter/material.dart';

class Grid_builder extends StatelessWidget {
  var colours=[Colors.green,Colors.red,Colors.blue,Colors.yellow,Colors.orange,
    Colors.black,Colors.white,Colors.purple,Colors.greenAccent,Colors.redAccent];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 70,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10
      ),
          itemBuilder: (context,int){
        return Card(
        color: colours[int],
        child: Center(child: Text("Hello")),
        );
    },itemCount: colours.length,
    ));
  }
}
