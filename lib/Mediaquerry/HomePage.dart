import 'package:assingnment_2/Mediaquerry/Desctop_Screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'Phone_Screen.dart';

void main(){
  runApp(DevicePreview(enabled: !kReleaseMode,
    builder: (context) => MaterialApp(
      useInheritedMediaQuery: true, home: Home_Page(),
    ), // Wrap your app
  ),);
}
class Home_Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    if(screenwidth < 600){
      return Phone_Screen();
    }else{
      return Desctop_Screen();
    }
  }
}
