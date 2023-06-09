import 'package:flutter/material.dart';

class Grid_ex extends StatelessWidget {
  var colours=[Colors.green,Colors.red,Colors.blue,Colors.yellow,Colors.orange,
    Colors.black,Colors.white,Colors.purple,Colors.greenAccent,Colors.redAccent];
  var icons=[Icons.camera_alt_rounded,Icons.phone,Icons.doorbell,
    Icons.message,Icons.calendar_month,Icons.ring_volume,
    Icons.change_circle,Icons.wifi_channel,Icons.tv,
    Icons.panorama_fish_eye,];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid View"),),
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      mainAxisExtent: 80),
        children: List.generate(10, (index) => Container(
          height: 50,
          width: 100,
          decoration: BoxDecoration(
            color: colours[index],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Wrap(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //mainAxisSize: MainAxisSize.max,
              children: [
                Icon(icons[index],size: 30,),
                SizedBox(width: 20,),
                Text("Heart Shaker",style: TextStyle(fontSize: 20),)
              ],
            ),
          ),
        )),
       )

    ) ;



    //   GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
    //     mainAxisSpacing: 10,
    //    crossAxisSpacing: 10),
    //   children: [
    //     Card(color: Colors.greenAccent, child: Row(
    //       children: const [
    //         Icon(Icons.call), SizedBox(width: 20,),Text("Heart Shaker")
    //       ],
    //     ),
    //     ),
    //     Card(color: Colors.purple, child: Row(
    //       children: const [
    //         Icon(Icons.camera), SizedBox(width: 20,),Text("Heart Shaker")
    //       ],
    //     ),
    //     ),
    //     Card(color: Colors.red, child: Row(
    //       children: const [
    //         Icon(Icons.ring_volume), SizedBox(width: 20,),Text("Heart Shaker")
    //       ],
    //     ),
    //     ),
    //     Card(color: Colors.blue, child: Row(
    //       children: const [
    //         Icon(Icons.health_and_safety), SizedBox(width: 20,),Text("Heart Shaker")
    //       ],
    //     ),
    //     ),
    //     Card(color: Colors.white, child: Row(
    //       children: const [
    //         Icon(Icons.telegram), SizedBox(width: 20,),Text("Heart Shaker")
    //       ],
    //     ),
    //     ),
    //     Card(color: Colors.black, child: Row(
    //       children: const [
    //         Icon(Icons.camera_alt_rounded), SizedBox(width: 20,),Text("Heart Shaker")
    //       ],
    //     ),
    //     ),
    //     Card(color: Colors.yellow, child: Row(
    //       children: const [
    //         Icon(Icons.phone_android_outlined), SizedBox(width: 20,),Text("Heart Shaker")
    //       ],
    //     ),
    //     ),
    //     Card(color: Colors.deepPurple, child: Row(
    //       children: const [
    //         Icon(Icons.home), SizedBox(width: 20,),Text("Heart Shaker")
    //       ],
    //     ),
    //     ),
    //     Card(color: Colors.blueAccent, child: Row(
    //       children: const [
    //         Icon(Icons.home), SizedBox(width: 20,),Text("Heart Shaker")
    //       ],
    //     ),
    //     ),
    //     Card(color: Colors.transparent, child: Row(
    //       children: const [
    //         Icon(Icons.home), SizedBox(width: 20,),Text("Heart Shaker")
    //       ],
    //     ),
    //     ),
    //     Card(color: Colors.orange, child: Row(
    //       children: const [
    //         Icon(Icons.home), SizedBox(width: 20,),Text("Heart Shaker")
    //       ],
    //     ),
    //     ),
    //     Card(color: Colors.greenAccent, child: Row(
    //       children: const [
    //         Icon(Icons.home), SizedBox(width: 20,),Text("Heart Shaker")
    //       ],
    //     ),
    //     ),
    //     Card(color: Colors.orangeAccent, child: Row(
    //       children: const [
    //         Icon(Icons.home), SizedBox(width: 20,),Text("Heart Shaker")
    //       ],
    //     ),
    //     ),
    //   ],
    // );
  }
}
