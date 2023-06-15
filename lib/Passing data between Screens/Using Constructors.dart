import 'package:assingnment_2/LoginPage_Stateful.dart';
import 'package:assingnment_2/Passing%20data%20between%20Screens/Constructor_Stateful.dart';
import 'package:assingnment_2/Passing%20data%20between%20Screens/Constructor_Stateless.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        home: Constructor_MainPage(),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      )));
}

class Constructor_MainPage extends StatelessWidget {

  String name="Saheed";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Data Passing main Page"),),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Constructor_Stateless(
                n1 : name, n2 : 22,n3 : "Kothamangalam"
              )));
            }, child: Text(" Go to Stateless")),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Constructor_Stateful(
                x1 : name,x2: 23,x3: "cheruvattoor"
              )));
            }, child: Text("Go to stateful"))
          ],
        ),
      ),
    );
  }
}
