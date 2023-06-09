import 'dart:html';

import 'package:assingnment_2/Prfile_Ui_2.dart';
import 'package:assingnment_2/Splash.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main(){
  runApp(MaterialApp(home: Introduction_Page(),));
}
class Introduction_Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    PageDecoration pageDecoration=const PageDecoration(
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        color: Colors.redAccent,
        backgroundColor: Colors.white,
        fontStyle: FontStyle.italic
      ),
      bodyTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.blue,
        backgroundColor: Colors.white,
      ),
     boxDecoration: BoxDecoration(
       gradient: LinearGradient(
           colors: [
             Colors.blueGrey,
             Colors.orangeAccent,
             Colors.greenAccent,
             Colors.yellowAccent,
           ])
     )

    );
    return IntroductionScreen(
      pages: [
        PageViewModel(
          decoration: pageDecoration,
          title: "Hiii...User...",
          image: introimage("assets/icons/img_9.png"),
          body: "Hiii User. Welcome to my App",
        ),
        PageViewModel(
          decoration: pageDecoration,

          title: "Hiii...User...",
          image: introimage("assets/icons/img_10.png"),
          body: "Hiii User. Welcome to my App",
        ),
        PageViewModel(
          decoration: pageDecoration,
          title: "Hiii...User...",
          image: introimage("assets/icons/img_11.png"),
          body: "Hiii User. Welcome to my App",
        ),
        PageViewModel(
          decoration: pageDecoration,
          title: "Hiii...User...",
          image: introimage("assets/icons/img_12.png"),
          body: "Hiii User. Welcome to my App",
        ),
      ],
      onSkip: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Splash())),
      skip: Text("Skip"),
      showSkipButton: true,
      next: Text("NExt"),
      onDone: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Profile_Ui_2())),
      done: Text("Done"),
      dotsDecorator: const DotsDecorator(
        size: Size(30, 20),
        activeSize: Size(40, 30),
        activeColor: Colors.red,
        color: Colors.orangeAccent,
        shape: CircleBorder(
          side: BorderSide(color: Colors.green),
        )
      ),
    );
  }
}

Widget introimage(String s) {
  return Align(
    alignment: Alignment.topCenter,
    child: Container(
      height: double.infinity,
      width: double.infinity,
      child: Image.asset(
        s,
        width: double.infinity,
        height: double.infinity,
      ),
    ),
  );
}
