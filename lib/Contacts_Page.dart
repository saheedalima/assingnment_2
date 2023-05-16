import 'package:flutter/material.dart';

class ContactsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contacts"),
      actions: [
        Icon(Icons.search),
        SizedBox(width: 20,),
        Icon(Icons.camera),
      ],),

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/icons/background.png")),
        ),
        child: ListView(
          children: [
            Card(
              child: ListTile(
                title: Text("Wazi"),subtitle: Text("1234567392"),
              textColor: Colors.blue,
                leading:  CircleAvatar(backgroundImage: AssetImage("assets/icons/Picsart.png"),),
                trailing: Wrap(
                  children:  [
                    Icon(Icons.phone),
                    SizedBox(width: 20,),
                    Icon(Icons.message),
                  ],
                ),
              ),
            ),
          ListTile(title:  Text("Jamshi"),subtitle:  Text("7034858318"),
          textColor: Colors.blue,
          trailing: Row(
            children:  [
              Icon(Icons.phone),
              SizedBox(width: 20,),
              Icon(Icons.message),
            ],
          ),
          leading:  CircleAvatar(backgroundImage: AssetImage("assets/icons/Picsart.png"),),),
          ListTile(title: Text("Sathar"),textColor: Colors.blue,
              subtitle: Text("7559915491"),
          trailing: Wrap(
            children:  [
              Icon(Icons.phone),
              SizedBox(width: 20,),
              Icon(Icons.message),
            ],
          ),
          leading:  CircleAvatar(backgroundImage: AssetImage("assets/icons/Picsart.png"),),)],
        ),
      ),);
  }
}
