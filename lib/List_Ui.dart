import 'package:flutter/material.dart';

class List_Ui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cities Around The World"),
      ),
      body: ListView(
        children: [
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            color: Colors.orange,
            child: Row(
              children: [
                Container(
                  decoration:
                  BoxDecoration(
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Image.asset("assets/icons/img_2.png",fit: BoxFit.fill,),
                  ),
                  width: 200,
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Text("Finland",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(width: 20,),
                    Text("Europe",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Text("population : 52.9 billion")
                  ],
                )
              ],
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            color: Colors.orange,
            child: Row(
              children: [
                Container(
                  decoration:
                      BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Image.asset("assets/icons/img_3.png",fit: BoxFit.fill,),
                  ),
                  width: 200,
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Text("Delhi",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(width: 20,),
                    Text("Delhi",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Text("population : 52.9 billion")
                  ],
                )
              ],
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            color: Colors.orange,
            child: Row(
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Image.asset("assets/icons/img_2.png",fit: BoxFit.fill,),
                  ),
                  width: 200,
                ),
                const SizedBox(
                  width: 20,

                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Vancover",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    SizedBox(height: 20),
                    Text("Canada",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Text("population : 32.9 billion")
                  ],
                )
              ],
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            color: Colors.orange,
            child: Row(
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Image.asset("assets/icons/img_2.png"),
                  ),
                  width: 200,

                ),
                const SizedBox(
                  width: 20,

                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("London",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    SizedBox(height: 20),
                    Text("UK",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Text("population : 18.9 billion")
                  ],
                )
              ],
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            color: Colors.orange,
            child: Row(
              children: [

                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Image.asset("assets/icons/newyork.png"),
                  ),
                  width: 200,

                ),
                const SizedBox(
                  width: 20,

                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("New York",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    SizedBox(height: 20),
                    Text("New York",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Text("population : 18.9 billion")
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
