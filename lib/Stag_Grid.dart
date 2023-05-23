import 'package:assingnment_2/MyWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Stag_Grid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
            crossAxisCount: 3,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
          children: List.generate(10, (index) => StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 2,
            child: MyWidget(myimage: Image.asset("assets/icons/flutter_icon.png"),
              mycolour: Colors.redAccent,
              mytext: Text("hii"),
            ),)),
        ),
      ),
    );
  }
}
