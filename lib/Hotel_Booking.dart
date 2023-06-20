import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(DevicePreview(enabled: !kReleaseMode,
    builder: (context) => MaterialApp(
      useInheritedMediaQuery: true, home: Hotel_Booking(),
    ), // Wrap your app
  ),);
}

class Hotel_Booking extends StatelessWidget {
  var hotel_names =["Crown Plaza","Hotel Marriot","Holy dilyn","Marriot",];
  var images =["assets/icons/img_61.png","assets/icons/img_62.png","assets/icons/img_63.png","assets/icons/img_64.png"];
  var card_images=["assets/icons/img_71.png","assets/icons/img_72.png","assets/icons/img_73.png",
                              "assets/icons/img_74.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: ListTile(
                  title: const Text("Hello Arjun"),
                  subtitle: const Text("Find your Favorite Hotel",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  trailing: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      boxShadow: [BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5.0,
                          spreadRadius: 5,
                          offset: Offset(2.0, 2.0)
                      )],
                      image: DecorationImage(image: AssetImage("assets/icons/img_24.png"),fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10.0,
                      spreadRadius: 2,
                      offset: Offset(0,9.0)
                    )],
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child:  TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "search for hotels",
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Popular Hotel",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    const SizedBox(height: 20,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(4, (index) => Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 5.0,
                                    spreadRadius: 5,
                                    offset: Offset(2.0, 2.0)
                                )
                              ],
                            ),
                            height: 250,
                            width: 170,
                            child: Column(
                             //mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                    child: Container(
                                      height: 150,
                                        child: Image.asset(images[index],fit: BoxFit.cover,))),
                                Padding(
                                  padding:  const EdgeInsets.only(left: 8,right: 8,top: 20,),
                                  child: Container(
                                    height: 70,width: double.infinity,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(hotel_names[index],style: const TextStyle(
                                            fontWeight: FontWeight.bold,),),
                                        const Text("A Five star hotel in kochi"),
                                        const SizedBox(height: 3,),
                                        const Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("&180/per night",style: TextStyle(color: Colors.blue),),
                                           // SizedBox(width: 3,),
                                            Wrap(
                                              children: [
                                                Text("4.5",style: TextStyle(color: Colors.blue),),
                                                Icon(Icons.star,color: Colors.blue,size: 15,)
                                              ],
                                            )

                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                child:  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Hotel Packages",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      Text("View All",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.blue),),
                    ],
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: List.generate(card_images.length, (index) => Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(15)
                          ),
                            child: Image.asset(card_images[index],fit: BoxFit.cover,height: 120,width: 100,)),
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Container(
                                height: 120,
                                width: 170,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(hotel_names[index]),
                                  Text("A five star hotel index "),
                                  Text("180/night",style: TextStyle(color: Colors.blue),),
                                  Wrap(
                                    children: [
                                      Icon(Icons.car_crash,color: Colors.blue,),
                                      Icon(Icons.local_shipping,color: Colors.blue,),
                                      Icon(Icons.wine_bar,color: Colors.blue,),
                                      Icon(Icons.wifi,color: Colors.blue,),
                                    ],
                                  ),
                                ],
                              ),
                          ),
                            ),
                            Positioned(
                              top: 25,left: 140,
                              child: SizedBox(
                                height: 50,
                                child: ElevatedButton(onPressed: (){}, child: Text("BOOK",style: TextStyle(
                                  fontSize: 10,color: Colors.white,
                                ),),style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)
                                )),),
                              ),
                            )
                          ]
                        ),
                      ],
                    ),
                  )),
                ),
              ),

            ],
          ),
        ),
      ),bottomNavigationBar: BottomNavigationBar(items: [
      BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Explore"),
      BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Profile"),
    ]),
    );
  }
}
