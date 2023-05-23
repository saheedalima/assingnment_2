import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: List_With_separator(),
    theme: ThemeData(
      primarySwatch: Colors.teal
    ),
    darkTheme: ThemeData.dark(),
  ));
}
class List_With_separator extends StatelessWidget {
  var names=["Wazi","Jamshi","Sathar","Reji"];
  var colornum=[100,200,300,400];
  var photos=["assets/icons/flutter_icon.png","assets/icons/flutter_icon.png","assets/icons/flutter_icon.png",
    "assets/icons/flutter_icon.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("WhatsApp"),
        actions: [
          PopupMenuButton(itemBuilder: (context){
          return [
            PopupMenuItem(child: Text("Settings"),onTap: (){},),
            PopupMenuItem(child: Text("New Group")),
            PopupMenuItem(child: Text("New chat")),
            PopupMenuItem(child: Text("New person")),
          ];
        })],
      ),
      body:
      ListView.separated(itemBuilder: (context,int){
        return ListTile(
          title: Text(names[int]),
          leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/flutter_icon.png"),),
        );
      }, separatorBuilder: (context,int){  //separation of lines
        return Divider(
          thickness: 5,
          color: Colors.transparent,
        );
      },
          itemCount: names.length),
    );
  }
}
