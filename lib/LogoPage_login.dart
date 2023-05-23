import 'package:assingnment_2/LoginPage_Stateful.dart';
import 'package:assingnment_2/Registratin_Stateful.dart';
import 'package:flutter/material.dart';

class LogoPage_login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            const Text("Hello There!!!!",
              style: TextStyle(
                fontSize: 50,fontWeight: FontWeight.bold,
              color: Colors.black12,backgroundColor: Colors.white,),),
            Text("Automatic Idendify Verification"),
              Padding(padding: EdgeInsets.all(100)),
              Image.asset("assets/icons/working_logo.png",height: 50,width: 50,),
              Padding(padding: EdgeInsets.all(50)),
              // Image.asset("assets/icons/working_logo.png"),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>LoginPage_Stateful()));
            }, child: const Text("Login",
              style: TextStyle(
                fontSize: 40,
                backgroundColor: Colors.green,),)),
            Padding(padding: EdgeInsets.all(10)),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Registration_Stateful()));
            }, child: const Text("SignUp",style:
              TextStyle(fontSize: 50),),),
            ],),
        ),
      ),
    );
  }
}
