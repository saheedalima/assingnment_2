import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  final Image? myimage;
  final Text? mytext;
  final Color? mycolour;
  VoidCallback? callback;
  Widget? label;

  MyWidget({this.mytext,required this.myimage,this.callback,this.label, this.mycolour});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mycolour,
      child: ListTile(
        trailing: mytext,
        leading: myimage,
        onTap: callback,
        title: label,
      ),
    );
  }
}
