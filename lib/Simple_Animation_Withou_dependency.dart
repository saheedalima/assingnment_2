import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(DevicePreview(enabled: !kReleaseMode,
    builder: (context) => MaterialApp(
      useInheritedMediaQuery: true, home: Simple_Animation(),
    ), // Wrap your app
  ),);
}

class Simple_Animation extends StatefulWidget {

  @override
  State<Simple_Animation> createState() => _Simple_AnimationState();
}

class _Simple_AnimationState extends State<Simple_Animation> with SingleTickerProviderStateMixin{

  Animation<double>? animation;
  AnimationController? animationController;

  @override
  void initState() {
    super.initState();
    animationController =AnimationController(vsync: this,duration: Duration(seconds: 3));
    animation=Tween<double>(begin: 12,end: 100).animate(animationController!)..addListener(() {
      setState(() {

      });
    });
  }

  void incerasesize(){
    animationController!.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Simple Animation"),),
      body: Column(
        children: [
          Container(
           margin: EdgeInsets.all(10),
            child: Text("Welcome",style: TextStyle(fontSize: animation!.value),),
          ),
          ElevatedButton(onPressed: (){incerasesize();}, child: Text("Increase Size"))
        ],
      ),

    );
  }
}
