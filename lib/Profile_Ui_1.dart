import 'package:flutter/material.dart';

class Profile_Ui_1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back),),
      endDrawer: Drawer(),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CircleAvatar(radius: 75,
                backgroundImage: AssetImage("assets/icons/working_logo.png",),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(Icons.facebook,size: 40,color: Colors.blue,),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(Icons.telegram,size: 40,color: Colors.blue,),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(Icons.snapchat,size: 40,color: Colors.blue,),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(Icons.wb_twilight,size: 40,color: Colors.blue,),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Text("Saheed",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                  Text("@gmail.com"),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text("Mobile App Developer",style: TextStyle(fontSize: 20),),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height*.4,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        child: ListTile(
                          leading: Icon(Icons.timer,size: 30,),
                          title: Text("Purchase History"),
                          trailing: Icon(Icons.arrow_back),),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(60),
                          color: Colors.grey,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        child: ListTile(
                          leading: Icon(Icons.help,size: 30,),
                          title: Text("Help & Support"),
                          trailing: Icon(Icons.arrow_back),),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(60),
                          color: Colors.grey,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        child: ListTile(
                          leading: Icon(Icons.settings,size: 30,),
                          title: Text("Setings"),
                          trailing: Icon(Icons.arrow_back),),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(60),
                          color: Colors.grey,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        child: ListTile(
                          leading: Icon(Icons.mobile_friendly,size: 30,),
                          title: Text("Invite a Friend"),
                          trailing: Icon(Icons.arrow_back),),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(60),
                          color: Colors.grey,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        child: ListTile(
                          leading: Icon(Icons.logout,size: 30,),
                          title: Text("Logout"),
                          trailing: Icon(Icons.arrow_back),),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(60),
                          color: Colors.grey,),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
