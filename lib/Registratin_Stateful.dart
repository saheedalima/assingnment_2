import 'package:assingnment_2/LoginPage_Stateful.dart';
import 'package:flutter/material.dart';

class Registration_Stateful extends StatefulWidget {
  @override
  State<Registration_Stateful> createState() => _Registration_StatefulState();
}

class _Registration_StatefulState extends State<Registration_Stateful> {
  var formkey = GlobalKey<FormState>();
  var confirmpwd;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration"),
      ),
      body: Form(
          key: formkey,
          child: Column(
        children: [
          TextFormField(
            validator: (email) {
              if (email!.isEmpty || !email.contains('@')) {
                return "email must have '@";
              } else {
                return null;
              }
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              prefixIcon: Icon(Icons.email),
              hintText: "enter your email",
              helperText: "email must be in words",
              labelText: "email",
            ),
          ),
          TextFormField(
            validator: (uname) {
              if (uname!.isEmpty || uname.length < 3) {
                return "username must have atleast 4 charectors";
              } else {
                return null;
              }
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              prefixIcon: Icon(Icons.message),
              hintText: "enter your username",
              helperText: "username must be in words",
              labelText: "username",
            ),
          ),
          TextFormField(
            validator: (pass) {
              confirmpwd = pass;
              if (pass!.isEmpty || pass.length < 3) {
                return "password must have atleast 4 charectors";
              } else {
                return null;
              }
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              prefixIcon: Icon(Icons.password),
              suffixIcon: Icon(Icons.visibility),
              hintText: "enter your password",
              helperText: "password must be in letters",
              labelText: "password",
            ),
          ),
          TextFormField(
            validator: (confirmpass) {
              if (confirmpass!.isEmpty ||
                  confirmpass.length < 4 ||
                  confirmpass != confirmpwd) {
                return "confirmpassword must have atleast 4 charectors";
              } else {
                return null;
              }
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              prefixIcon: Icon(Icons.email),
              hintText: "enter your confirmpassword",
              helperText: "confirmpassword must be in letters",
              labelText: "confirmpassword",
            ),
          ),
          ElevatedButton(
              onPressed: () {
                final valid = formkey.currentState!.validate();
                if (valid) {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => LoginPage_Stateful()));
                }
              },
              child: Text("Register")),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LoginPage_Stateful()));
              },
              child: Text("Login")),
        ],
      )),
    );
  }
}
