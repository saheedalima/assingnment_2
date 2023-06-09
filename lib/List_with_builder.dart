import 'package:flutter/material.dart';

class List_with_builder extends StatelessWidget {
  var names=["Wazi","Jamshi","Sathar","Reji"];
  var numbers=[7034858318,1234567890,7559915491,0987654321];
  var colornum=[100,200,300,400];
  var photos=["assets/icons/flutter_icon.png","assets/icons/flutter_icon.png","assets/icons/flutter_icon.png",
  "assets/icons/flutter_icon.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contacts"),
        actions: [
          Icon(Icons.camera_alt),
          SizedBox(width: 20,),
          Icon(Icons.search)
        ],
      ),
      body:
          ListView.builder(itemBuilder: (context, i){
            Stack(
              children: [
                Image.asset("assets/icons/flutter_icon.png"),
                Icon(Icons.add),
              ],
            );
           return Card(
              child: ListTile(title: Text(names[i]),
              subtitle: Text("${numbers[i]}"),
              trailing: Wrap(children: [
                Icon(Icons.phone),
                SizedBox(width: 20,),
                Icon(Icons.message)
              ],),
              leading: Image.asset(photos[i]),),
            );
          },itemCount: numbers.length,),
    );
            
  }
}

