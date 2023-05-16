import 'package:assingnment_2/Registratin_Stateful.dart';
import 'package:flutter/material.dart';

class LoginPage_Stateful extends StatefulWidget {

  @override
  State<LoginPage_Stateful> createState() => _LoginPage_StatefulState();
}

class _LoginPage_StatefulState extends State<LoginPage_Stateful> {
   var appkey=GlobalKey<FormState>();
   bool showpwd=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("LoginPage Stateful"),),
      body:
      Container(
        height: double.infinity,width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/icons/background.png",),
          ),
        ),
        child: Form(
          key: appkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Login Page",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,color: Colors.redAccent,backgroundColor: Colors.white,),),
                TextFormField(
                  validator: (uname){
                    if(uname!.isEmpty || !uname.contains('@')){
                      return "Invalid Credentials";
                    }else{
                      return null;
                    }
                  },
                  decoration: const InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                  prefixIcon: Icon(Icons.email),
                  hintText: "enter your email",
                  helperText: "email must be in words",
                  labelText: "email",
                ),),
                TextFormField(
                  obscureText: showpwd,
                  obscuringCharacter: '*',
                  validator: (pass){
                    if(pass!.isEmpty || pass.length<5){
                      return "Password must be 5 letters";
                    }else{
                      return null;
                    }
                  },
                  decoration:  InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: IconButton(onPressed: (){
                    if(showpwd){
                      showpwd==false;
                    }
                  }, icon: Icon(showpwd == true? Icons.visibility_off : Icons.visibility)),
                  hintText: "enter your password",
                  helperText: "password must be in letters",
                  labelText: "password",
                ),),
                ElevatedButton(onPressed: (){
                  final valid=appkey.currentState!.validate();
                  if(valid){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Registration_Stateful()));
                  }else{
                  }
                }, child: Text("Login")),
                TextButton(onPressed: (){}, child: Text("Register")),
              ],
            )),
      ),
    );
  }
}
