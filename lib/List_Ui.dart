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
              shape: BeveledRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
            color: Colors.orange,
            child: Row(
              children: [
                Container(
                  width: 200,
                  decoration:
                      BoxDecoration(
                          borderRadius: BorderRadius.circular(50)),
                  child: Image.asset("assets/icons/img_3.png",fit: BoxFit.fill,),

                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: const [
                    Text("Delhi"),
                    SizedBox(height: 20),
                    Text("India"),
                    Text("population : 32.9 billion")
                  ],
                )
              ],
            ),
          ),
          Card(
            color: Colors.orange,
            child: Row(
              children: [
                Container(
                  decoration:
                      BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                  child: Image.asset("assets/icons/img_2.png",fit: BoxFit.fill,),
                  width: 200,
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: const [
                    Text("Finland"),
                    SizedBox(width: 20,),
                    Text("Europe"),
                    Text("population : 52.9 billion")
                  ],
                )
              ],
            ),
          ),
          Card(
            color: Colors.orange,
            child: Row(
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Image.asset("assets/icons/img_2.png",fit: BoxFit.fill,),
                  width: 200,
                ),
                const SizedBox(
                  width: 20,

                ),
                Column(
                  children: const [
                    Text("Vancover"),
                    SizedBox(height: 20),
                    Text("Canada"),
                    Text("population : 32.9 billion")
                  ],
                )
              ],
            ),
          ),
          Card(
            color: Colors.orange,
            child: Row(
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Image.asset("assets/icons/img_2.png"),
                  width: 200,

                ),
                const SizedBox(
                  width: 20,

                ),
                Column(
                  children: const [
                    Text("London"),
                    SizedBox(height: 20),
                    Text("UK"),
                    Text("population : 18.9 billion")
                  ],
                )
              ],
            ),
          ),
          Card(
             color: Colors.orange,
            child: Row(
              children: [

                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Image.asset("assets/icons/img_2.png"),
                  width: 200,

                ),
                const SizedBox(
                  width: 20,

                ),
                Column(
                  children: const [
                    Text("New York"),
                    SizedBox(height: 20),
                    Text("New York"),
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
