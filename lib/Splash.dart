import 'dart:async';

import 'package:assingnment_2/Contacts_Page.dart';
import 'package:assingnment_2/List_With_separator.dart';
import 'package:assingnment_2/LogoPage_login.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MaterialApp(
      useInheritedMediaQuery: true, home: Splash(),
    ), // Wrap your app
  ),);
}

class Splash extends StatefulWidget {

 
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => List_With_separator()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.orangeAccent,
            Colors.redAccent,
            Colors.purple,
            Colors.purpleAccent,
          ],begin: Alignment.topCenter,
          end: Alignment.bottomCenter,)
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/icons/Picsart.png",height: 100,width: 100,),
              const Text("TiVidey",style: TextStyle(
                fontSize: 50,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.white
              ),)
              ],
          ),
        ),
      ),

    );
  }
}
