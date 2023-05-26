import 'dart:ui';

import 'package:flutter/material.dart';

class Hotel_Details_Ui extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hotel Details"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
                children:[
                Container(
                height: 300,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/icons/img_2.png"),
                        fit: BoxFit.fill)),

              ),
                Positioned(top: 230,
                  child: Column(
                    children: const [
                      Text("Crowne Plaza",style: TextStyle(color: Colors.white),),
                      Text("Kochi, Kerala",style: TextStyle(color: Colors.white),),
                      SizedBox(height: 20,),
                      Text("8.4/85 rating..",style: TextStyle(
                          backgroundColor: Colors.grey,
                        color: Colors.white,
                      ),),
                    ],
                  ),
                ),
                const Positioned(top: 250,left: 250,
                    child: Icon(Icons.heart_broken)),
             ]
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Row(
                    children: const [
                      Icon(Icons.star,color: Colors.blue,),
                      Icon(Icons.star,color: Colors.blue,),
                      Icon(Icons.star,color: Colors.blue,),
                      Icon(Icons.star,color: Colors.blue,),
                      Icon(Icons.star,color: Colors.blue,),
                    ],
                  ),
                  const Text("200",)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Row(
                    children: const [
                      Icon(Icons.location_city),
                      Text("8 km to lulumall"),
                    ],
                  ),
                  Text("/per night"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: SizedBox(
                width: 300,
                  height: 50,
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    child: ElevatedButton(onPressed: (){}, child: Text("Book Now.."),
                    ),
                  )
              ),
            ),
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text("Hotel, house, inn, tavern refer to establishments for the lodging or entertainment of travelers and others. Hotel is the common word, suggesting a more or less commodious establishment with up-to-date appointments, although this is not necessarily true: the best hotel in the city; a cheap hotel near the docks. The word house is often used in the name of a particular hotel, the connotation being wealth and luxury: the Parker House; the Palmer House. Inn suggests a place of homelike comfort and old-time appearance or ways; it is used for quaint or archaic effect in the names of some public houses and hotels in the U.S.: the Pickwick Inn; the Wayside Inn. A tavern, like the English public house, is a house where liquor is sold for drinking on the premises; until recently it was archaic or dialectal in the U.S., but has been revived to substitute for saloon, which had unfavorable connotations: Taverns are required to close by two o'clock in the morning. The word has also been used in the sense of inn, especially in New England, ever since Colonial days: Wiggins Tavern.",
                      textAlign: TextAlign.justify,),
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
