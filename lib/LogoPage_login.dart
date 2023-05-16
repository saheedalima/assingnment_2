import 'package:assingnment_2/LoginPage_Stateful.dart';
import 'package:flutter/material.dart';

class LogoPage_login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text("Hello There!!!!",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,
          color: Colors.black12,backgroundColor: Colors.white,),),
        Text("Automatic Idendify Verification"),
     // Image.asset("assets/icons/working_logo.png"),
        ElevatedButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>LoginPage_Stateful()));
        }, child: Text("Login",style: TextStyle(backgroundColor: Colors.green,),)),
        ElevatedButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>LoginPage_Stateful()));
        }, child: Text("SignUp"))
      ],),
    );
  }
}
