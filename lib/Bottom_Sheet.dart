import 'dart:js';

import 'package:flutter/material.dart';

class Bottom_Sheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottm Sheet"),),
      body: Center(
        child: GestureDetector(
          onLongPress: (){

          },)
      ),
    );
  }

}
