import 'package:flutter/material.dart';

class Profile_Ui_2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Profile",style: TextStyle(fontSize: 25),)),
        actions: [
          PopupMenuButton<int>(itemBuilder: (context)=> 
              [
                PopupMenuItem(child: Text("Popup Menu Button")),
              ]
          ),
        ],
      ),
      drawer: NavigationDrawer(children: [
      ]),
      body: Column(
        children: [
          Container(
            height: 300,
          child: Stack(
            children: [
              Image.asset("assets/icons/img_8.png"),
              Positioned(top: 140,left: 110,
                child: CircleAvatar(backgroundImage: AssetImage("assets/icons/img_7.png"),radius: 80,),),
              Positioned(top: 190,left: 10,
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.deepOrange,
                  child: Icon(Icons.message),
                ),
              ),
              Positioned(top: 190,right: 10,
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.add),
                ),
              ),
            ],
          ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Text("David Beckham",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text("Model / superstar",style: TextStyle(color: Colors.lightBlue),),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
